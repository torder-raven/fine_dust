part of 'air_quality_detail_bloc.dart';

sealed class AirQualityDetailState {}

@freezed
class AirQualityDetailInitial extends AirQualityDetailState
    with _$AirQualityDetailInitial {
  const factory AirQualityDetailInitial() = _AirQualityDetailInitial;
}

@freezed
class AirQualityDetailSuccess extends AirQualityDetailState
    with _$AirQualityDetailSuccess {
  const factory AirQualityDetailSuccess({
    required LocationTotalInfo locationTotalInfo,
    required bool isBookmarkedLocation,
  }) = _AirQualityDetailSuccess;
}

@freezed
class AirQualityDetailFailure extends AirQualityDetailState
    with _$AirQualityDetailFailure {
  const factory AirQualityDetailFailure() = _AirQualityDetailFailure;
}
