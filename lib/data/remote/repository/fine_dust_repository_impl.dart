import 'package:fine_dust/data/remote/datasource/dust_info_api.dart';
import 'package:fine_dust/domain/entity/dust_info.dart';

import 'package:fine_dust/domain/entity/location_Info.dart';

import '../../../domain/repository/fine_dust_repository.dart';

class FineDustRepositoryImpl implements FineDustRepository {
  final DustInfoApi _api;

  FineDustRepositoryImpl({
    required DustInfoApi api,
  }) : _api = api;

  @override
  Future<List<DustInfo>> getFineDustInfoList() async {
    // TODO: implement getOzoneInfoList
    throw UnimplementedError();
  }

  @override
  Future<List<DustInfo>> getOzoneInfoList() async {
    // TODO: implement getOzoneInfoList
    throw UnimplementedError();
  }

  @override
  Future<List<DustInfo>> getUltraFineDustInfoList() async {
    // TODO: implement getUltraFineDustInfoList
    throw UnimplementedError();
  }

  @override
  Future<LocationInfo> getLocalAirInfoUsecase({required int locationId}) async {
    // TODO: implement getLocalAirInfoUsecase
    throw UnimplementedError();
  }
}
