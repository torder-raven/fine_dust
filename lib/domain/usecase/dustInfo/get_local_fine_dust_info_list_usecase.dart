import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/domain/repository/fine_dust_repository.dart';

class GetLocalFineDustInfoListUsecase {
  GetLocalFineDustInfoListUsecase({required FineDustRepository repository})
      : _repository = repository;

  final FineDustRepository _repository;

  Future<List<LocationFineDust>> call() =>
      _repository.getLocationFineDustList();
}
