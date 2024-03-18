import 'package:fine_dust/domain/entity/location_Info.dart';
import 'package:fine_dust/domain/entity/location_total_info.dart';

abstract interface class FineDustRepository {
  Future<List<DustInfo>> getFineDustInfoList();
  Future<List<DustInfo>> getUltraFineDustInfoList();
  Future<List<DustInfo>> getOzoneInfoList();
  Future<LocationInfo> getLocalAirInfoUsecase({required int locationId});
}