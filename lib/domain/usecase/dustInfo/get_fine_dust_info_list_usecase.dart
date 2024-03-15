import '../../entity/dust_info.dart';
import '../../repository/fine_dust_repository.dart';

class GetFineDustInfoListUsecase {
  GetFineDustInfoListUsecase({required FineDustRepository repository}) : _repository = repository;

  final FineDustRepository _repository;

  Future<List<DustInfo>> call() => _repository.getFineDustInfoList();
}