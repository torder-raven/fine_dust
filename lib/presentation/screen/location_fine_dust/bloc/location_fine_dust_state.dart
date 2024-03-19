part of 'location_fine_dust_bloc.dart';

@freezed
class LocationFineDustState with _$LocationFineDustState {
  factory LocationFineDustState({
    required LocationFineDustStatus status,
    List<LocationFineDust>? locationFineDustList,
  }) = _LocationFineDustState;
}

enum LocationFineDustStatus {
  initial,
  loading,
  success,
  failure,
}
