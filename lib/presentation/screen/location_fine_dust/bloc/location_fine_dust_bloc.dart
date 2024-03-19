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
    bookmarkListStreamSubscription =
        getBookmarkListUsecase.call().listen((bookmarkList) {
      add(_RefreshBookmarkList(bookmarkList));
    });

    on<_Fetch>(_fetch);
    on<_Bookmark>(_bookmark);
    on<_DeleteBookmark>(_deleteBookmark);
    on<_RefreshBookmarkList>(_refreshBookmarkList);
  }

  final GetLocalFineDustInfoListUsecase getLocalFineDustInfoListUsecase;
  final BookmarkLocationUsecase bookmarkLocationUsecase;
  final DeleteBookmarkUsecase deleteBookmarkUsecase;
  final GetBookmarkListUsecase getBookmarkListUsecase;

  late StreamSubscription<List<int>> bookmarkListStreamSubscription;

  Future<void> _fetch(
    _Fetch event,
    Emitter<LocationFineDustState> emit,
  ) async {
    emit(state.copyWith(status: LocationFineDustStatus.loading));

    try {
      final locationFineDustList = await getLocalFineDustInfoListUsecase.call();

      emit(state.copyWith(
        status: LocationFineDustStatus.success,
        locationFineDustList: locationFineDustList,
      ));
    } catch (e) {
      emit(state.copyWith(
          status: LocationFineDustStatus.failure, locationFineDustList: []));
    }
  }

  Future<void> _refreshBookmarkList(
    _RefreshBookmarkList event,
    Emitter<LocationFineDustState> emit,
  ) async {
    final bookmarkedList = state.locationFineDustList
        ?.where(
            (element) => event.bookmarkList.contains(element.locationCode.code))
        .toList();

    emit(state.copyWith(bookmarkList: bookmarkedList));
  }

  Future<void> _bookmark(
    _Bookmark event,
    Emitter<LocationFineDustState> emit,
  ) async {
    await bookmarkLocationUsecase.call(locationCode: event.locationCode);
  }

  Future<void> _deleteBookmark(
    _DeleteBookmark event,
    Emitter<LocationFineDustState> emit,
  ) async {
    await deleteBookmarkUsecase.call(locationCode: event.locationCode);
  }

  @override
  Future<void> close() {
    bookmarkListStreamSubscription.cancel();
    return super.close();
  }
}
