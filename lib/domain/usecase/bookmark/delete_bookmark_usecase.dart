import 'package:fine_dust/domain/repository/bookmark_repositort.dart';

class DeleteBookmarkUsecase {
  DeleteBookmarkUsecase({
    required BookmarkRepository repository,
  }) : _repository = repository;

  final BookmarkRepository _repository;

  Future<bool> call({required int locationId}) =>
      _repository.deleteBookmark(locationId: locationId);
}
