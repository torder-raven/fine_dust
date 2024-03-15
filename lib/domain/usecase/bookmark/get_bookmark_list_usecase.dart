import 'package:fine_dust/domain/entity/location_Info.dart';
import 'package:fine_dust/domain/repository/bookmark_repositort.dart';

class GetBookmarkListUsecase {
  GetBookmarkListUsecase({required BookmarkRepository repository})
      : _repository = repository;

  final BookmarkRepository _repository;

  Stream<List<LocationInfo>> call() => _repository.getBookmarkList();
}
