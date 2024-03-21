part of 'air_quality_detail_bloc.dart';

sealed class AirQualityDetailEvent {}

@freezed
class AirQualityDetailStarted extends AirQualityDetailEvent
    with _$AirQualityDetailStarted {
  const factory AirQualityDetailStarted({
    required LocationCode locationCode,
  }) = _AirQualityDetailStarted;
}

@freezed
class AirQualityDetailBookmarked extends AirQualityDetailEvent
    with _$AirQualityDetailBookmarked {
  const factory AirQualityDetailBookmarked({
    required LocationCode locationCode,
  }) = _AirQualityDetailBookmarked;
}
