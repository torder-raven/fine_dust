part of 'location_fine_dust_bloc.dart';

@freezed
class LocationFineDustState with _$LocationFineDustState {
  factory LocationFineDustState({
    required LocationFineDustStatus status,
    @Default([]) List<LocationFineDust> sortedList,
    @Default([]) List<LocationFineDust> locationFineDustList,
    @Default([]) List<int> bookmarkLocationList,
  }) = _LocationFineDustState;
}

enum LocationFineDustStatus {
  initial,
  loading,
  success,
  failure,
}
