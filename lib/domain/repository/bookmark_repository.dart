
import 'package:fine_dust/domain/entity/location_code.dart';

abstract interface class BookmarkRepository {
  Future<bool> getIsBookmarkedLocation({required LocationCode locationCode});
  Stream<List<int>> getBookmarkList();
  deleteBookmark({required LocationCode locationCode});
  bookmarkLocation({required LocationCode locationCode});
}