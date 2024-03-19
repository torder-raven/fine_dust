part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    required DetailStatus status,
    LocationTotalInfo? locationTotalInfo,
    bool? isBookmarkedLocation,
  }) = _DetailState;
}

enum DetailStatus {
  initial,
  success,
}
