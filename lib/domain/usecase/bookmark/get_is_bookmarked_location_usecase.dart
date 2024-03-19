import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/repository/bookmark_repository.dart';

class GetIsBookmarkedLocationUsecase {
  GetIsBookmarkedLocationUsecase({required BookmarkRepository repository})
      : _repository = repository;

  final BookmarkRepository _repository;

  Future<bool> call({required LocationCode locationCode}) =>
      _repository.getIsBookmarkedLocation(locationCode: locationCode);
}
