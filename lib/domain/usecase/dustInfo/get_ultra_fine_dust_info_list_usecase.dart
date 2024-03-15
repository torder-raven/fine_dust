import 'package:fine_dust/domain/entity/dust_info.dart';
import '../../repository/fine_dust_repository.dart';

class GetUltraFineDustInfoListUsecse {
  GetUltraFineDustInfoListUsecse({required FineDustRepository repository})
      : _repository = repository;

  final FineDustRepository _repository;

  Future<List<DustInfo>> call() => _repository.getUltraFineDustInfoList();
}
