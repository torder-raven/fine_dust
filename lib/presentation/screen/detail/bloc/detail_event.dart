part of 'detail_bloc.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.started(LocationCode locationCode) = _Started;
  const factory DetailEvent.onPressBookmarked(LocationCode locationCode) = _OnPressBookmarked;
}
