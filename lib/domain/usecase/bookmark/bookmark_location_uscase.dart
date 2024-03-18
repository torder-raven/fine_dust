import 'package:fine_dust/domain/repository/bookmark_repositort.dart';

class BookmarkLocationUsecase {
  BookmarkLocationUsecase({required BookmarkRepository repository})
      : _repository = repository;

  final BookmarkRepository _repository;

  Future<bool> call({required int locationCode}) =>
      _repository.bookmarkLocation(locationCode: locationCode);
}
