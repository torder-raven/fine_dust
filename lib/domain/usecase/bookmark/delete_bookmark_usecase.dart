import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/repository/bookmark_repository.dart';

class DeleteBookmarkUsecase {
  DeleteBookmarkUsecase({
    required BookmarkRepository repository,
  }) : _repository = repository;

  final BookmarkRepository _repository;

  call({required LocationCode locationCode}) =>
      _repository.deleteBookmark(locationCode: locationCode);
}
