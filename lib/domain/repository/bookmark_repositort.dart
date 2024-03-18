abstract interface class BookmarkRepository {
  Future<bool> getIsBookmarkedLocation({required int locationCode});

  Stream<List<int>> getBookmarkList();

  Future<bool> deleteBookmark({required int locationCode});

  Future<bool> bookmarkLocation({required int locationCode});
}
