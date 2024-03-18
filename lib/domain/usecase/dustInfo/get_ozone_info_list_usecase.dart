import 'package:fine_dust/domain/entity/location_Info.dart';

import '../../repository/fine_dust_repository.dart';

class GetOzoneInfoListUsecase {
  GetOzoneInfoListUsecase({required FineDustRepository repository})
      : _repository = repository;

  final FineDustRepository _repository;

  Future<List<LocationInfo>> call() => _repository.getOzoneInfoList();
}
