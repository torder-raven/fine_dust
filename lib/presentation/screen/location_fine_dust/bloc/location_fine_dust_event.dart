part of 'location_fine_dust_bloc.dart';

@freezed
class LocationFineDustEvent with _$LocationFineDustEvent {
  const factory LocationFineDustEvent.fetch() = _Fetch;
  const factory LocationFineDustEvent.refreshList() = _RefreshList;
  const factory LocationFineDustEvent.listenBookmarkStream() = _ListenBookmarkStream;
  const factory LocationFineDustEvent.bookmark(LocationCode locationCode) = _Bookmark;
  const factory LocationFineDustEvent.deleteBookmark(LocationCode locationCode) = _DeleteBookmark;
}