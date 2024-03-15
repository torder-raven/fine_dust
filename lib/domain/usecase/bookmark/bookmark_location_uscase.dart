import 'package:fine_dust/domain/repository/bookmark_repositort.dart';

import '../../entity/location_Info.dart';

class BookmarkLocationUsecase {
  BookmarkLocationUsecase({required BookmarkRepository repository})
      : _repository = repository;

  final BookmarkRepository _repository;

  Future<bool> call({required LocationInfo location}) =>
      _repository.bookmarkLocation(location: location);
}
