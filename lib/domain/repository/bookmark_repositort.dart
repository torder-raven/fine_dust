
import '../entity/location_Info.dart';

abstract interface class BookmarkRepository {
  Future<bool> getIsBookmarkedLocation({required int locationId});
  Stream<List<LocationInfo>> getBookmarkList();
  Future<bool> deleteBookmark({required int locationId});
  Future<bool> bookmarkLocation({required LocationInfo location});
}