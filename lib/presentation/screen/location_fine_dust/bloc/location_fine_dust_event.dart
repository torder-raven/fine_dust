part of 'location_fine_dust_bloc.dart';

@freezed
class LocationFineDustEvent with _$LocationFineDustEvent {
  const factory LocationFineDustEvent.fetch() = _Fetch;
  const factory LocationFineDustEvent.refreshBookmarkList(List<int> bookmarkList) = _RefreshBookmarkList;
  const factory LocationFineDustEvent.bookmark(LocationCode locationCode) = _Bookmark;
  const factory LocationFineDustEvent.deleteBookmark(LocationCode locationCode) = _DeleteBookmark;
}