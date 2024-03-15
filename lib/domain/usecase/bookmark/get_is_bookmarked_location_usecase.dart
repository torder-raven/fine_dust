import 'package:fine_dust/domain/repository/bookmark_repositort.dart';

class GetIsBookmarkedLocationUsecase {
  GetIsBookmarkedLocationUsecase({required BookmarkRepository repository})
      : _repository = repository;

  final BookmarkRepository _repository;

  Future<bool> call({required int locationId}) =>
      _repository.getIsBookmarkedLocation(locationId: locationId);
}
