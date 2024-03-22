import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/domain/usecase/bookmark/bookmark_location_uscase.dart';
import 'package:fine_dust/domain/usecase/bookmark/delete_bookmark_usecase.dart';
import 'package:fine_dust/domain/usecase/bookmark/get_bookmark_list_usecase.dart';
import 'package:fine_dust/domain/usecase/dustInfo/get_local_fine_dust_info_list_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_fine_dust_bloc.freezed.dart';

part 'location_fine_dust_event.dart';

part 'location_fine_dust_state.dart';

class LocationFineDustBloc
    extends Bloc<LocationFineDustEvent, LocationFineDustState> {
  LocationFineDustBloc({
    required this.getLocalFineDustInfoListUsecase,
    required this.bookmarkLocationUsecase,
    required this.deleteBookmarkUsecase,
    required this.getBookmarkListUsecase,
  }) : super(LocationFineDustState(status: LocationFineDustStatus.initial)) {
    on<_Fetch>(_fetch);
    on<_ListenBookmarkStream>(_listenBookmarkStream);
    on<_RefreshList>(_refreshList);
    on<_Bookmark>(_bookmark);
    on<_DeleteBookmark>(_deleteBookmark);

    add(const _ListenBookmarkStream());
    add(const _Fetch());
  }

  final GetLocalFineDustInfoListUsecase getLocalFineDustInfoListUsecase;
  final BookmarkLocationUsecase bookmarkLocationUsecase;
  final DeleteBookmarkUsecase deleteBookmarkUsecase;
  final GetBookmarkListUsecase getBookmarkListUsecase;

  Future<void> _fetch(
    _Fetch event,
    Emitter<LocationFineDustState> emit,
  ) async {
    emit(state.copyWith(status: LocationFineDustStatus.loading));

    try {
      final locationFineDustList = await getLocalFineDustInfoListUsecase();
      emit(state.copyWith(locationFineDustList: locationFineDustList));
      add(const _RefreshList());
    } catch (e) {
      emit(state.copyWith(status: LocationFineDustStatus.failure));
    }
  }

  Future<void> _listenBookmarkStream(
      _ListenBookmarkStream event, Emitter<LocationFineDustState> emit) async {
    await emit.onEach(
      getBookmarkListUsecase(),
      onData: (list) {
        emit(state.copyWith(bookmarkLocationList: list));
        if (state.status != LocationFineDustStatus.loading) {
          add(const _RefreshList());
        }
      },
    );
  }

  Future<void> _refreshList(
    _RefreshList event,
    Emitter<LocationFineDustState> emit,
  ) async {
    final list = state.locationFineDustList;
    final bookmarkLocationList = state.bookmarkLocationList;

    if (list.isEmpty || bookmarkLocationList.isEmpty) {
      emit(state.copyWith(
        status: LocationFineDustStatus.success,
        sortedList: list,
      ));
      return;
    }

    final List<LocationFineDust> bookmarkList = bookmarkLocationList
        .map((bookmarkLocation) => list.firstWhere(
            (element) => element.locationCode.code == bookmarkLocation))
        .toList();

    final List<LocationFineDust> sortedList = [...bookmarkList];

    for (LocationFineDust locationFineDust in list) {
      if (bookmarkList.contains(locationFineDust)) continue;
      sortedList.add(locationFineDust);
    }

    emit(state.copyWith(
      status: LocationFineDustStatus.success,
      sortedList: sortedList,
    ));
  }

  Future<void> _bookmark(
    _Bookmark event,
    Emitter<LocationFineDustState> emit,
  ) async {
    await bookmarkLocationUsecase(locationCode: event.locationCode);
  }

  Future<void> _deleteBookmark(
    _DeleteBookmark event,
    Emitter<LocationFineDustState> emit,
  ) async {
    await deleteBookmarkUsecase(locationCode: event.locationCode);
  }
}
