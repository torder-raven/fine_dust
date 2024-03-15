import 'package:fine_dust/domain/entity/dust_info.dart';
import 'package:fine_dust/domain/entity/location_Info.dart';

abstract interface class FineDustRepository {
  Future<List<DustInfo>> getFineDustInfoList();

  Future<List<DustInfo>> getUltraFineDustInfoList();

  Future<List<DustInfo>> getOzoneInfoList();

  Future<LocationInfo> getLocalAirInfoUsecase({required int locationId});
}