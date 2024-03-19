import 'package:fine_dust/data/remote/datasource/bookmark_firestore.dart';
import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/repository/bookmark_repository.dart';

class BookmarkRepositoryImpl implements BookmarkRepository {
  final BookmarkFirestore _firestore;

  BookmarkRepositoryImpl({
    required BookmarkFirestore firestore,
  }) : _firestore = firestore;

  @override
  bookmarkLocation({required LocationCode locationCode}) =>
      _firestore.bookmarkLocation(location: locationCode);

  @override
  deleteBookmark({required LocationCode locationCode}) =>
      _firestore.deleteBookmark(locationCode: locationCode);

  @override
  Stream<List<int>> getBookmarkList() => _firestore.getBookmarkList();

  @override
  Future<bool> getIsBookmarkedLocation({required LocationCode locationCode}) =>
      _firestore.getIsBookmarked(locationCode: locationCode);
}
