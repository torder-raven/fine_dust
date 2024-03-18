import 'package:fine_dust/data/remote/datasource/dust_info_api.dart';
import 'package:fine_dust/domain/entity/dust_info.dart';
import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/domain/entity/location_total_info.dart';

import '../../../domain/repository/fine_dust_repository.dart';

class FineDustRepositoryImpl implements FineDustRepository {
  final DustInfoApi _api;

  FineDustRepositoryImpl({
    required DustInfoApi api,
  }) : _api = api;

  @override
  Future<List<LocationFineDust>> getLocationFineDustList() async {
    // TODO: implement getLocationFineDustList
    throw UnimplementedError();
  }

  @override
  Future<LocationTotalInfo> getLocalAirInfo({required int locationId}) async {
    // TODO: implement getLocalAirInfo
    throw UnimplementedError();
  }
}
