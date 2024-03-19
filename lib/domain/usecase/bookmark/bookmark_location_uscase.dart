import 'package:fine_dust/domain/repository/bookmark_repository.dart';

import '../../entity/location_code.dart';

class BookmarkLocationUsecase {
  BookmarkLocationUsecase({required BookmarkRepository repository})
      : _repository = repository;

  final BookmarkRepository _repository;

  call({required LocationCode locationCode}) => _repository.bookmarkLocation(locationCode: locationCode);
}
