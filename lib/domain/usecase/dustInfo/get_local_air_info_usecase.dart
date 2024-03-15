import 'package:fine_dust/domain/entity/location_Info.dart';
import '../../repository/fine_dust_repository.dart';

class GetLocalAirInfoUsecase {
  GetLocalAirInfoUsecase({required FineDustRepository repository}) : _repository = repository;

  final FineDustRepository _repository;

  Future<LocationInfo> call({required int locationId}) => _repository.getLocalAirInfoUsecase(locationId: locationId);
}