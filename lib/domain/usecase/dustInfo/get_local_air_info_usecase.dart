import 'package:fine_dust/domain/entity/location_total_info.dart';

import '../../repository/fine_dust_repository.dart';

class GetLocalAirInfoUsecase {
  GetLocalAirInfoUsecase({required FineDustRepository repository})
      : _repository = repository;

  final FineDustRepository _repository;

  Future<LocationTotalInfo> call({required int locationCode}) =>
      _repository.getLocalAirInfo(locationCode: locationCode);
}
