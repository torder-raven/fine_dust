import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/domain/usecase/dustInfo/get_local_fine_dust_info_list_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_fine_dust_bloc.freezed.dart';

part 'location_fine_dust_event.dart';

part 'location_fine_dust_state.dart';

class LocationFineDustBloc
    extends Bloc<LocationFineDustEvent, LocationFineDustState> {
  LocationFineDustBloc({
    required this.getLocalFineDustInfoListUsecase,
  }) : super(LocationFineDustState(status: LocationFineDustStatus.initial)) {
    on<_Fetch>(_fetch);
  }

  final GetLocalFineDustInfoListUsecase getLocalFineDustInfoListUsecase;

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
      emit(state.copyWith(status: LocationFineDustStatus.failure));
    }
  }
}
