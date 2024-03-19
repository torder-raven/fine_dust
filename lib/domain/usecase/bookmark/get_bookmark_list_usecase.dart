import 'package:fine_dust/domain/repository/bookmark_repository.dart';

class GetBookmarkListUsecase {
  GetBookmarkListUsecase({required BookmarkRepository repository})
      : _repository = repository;

  final BookmarkRepository _repository;

  Stream<List<int>> call() => _repository.getBookmarkList();
}
