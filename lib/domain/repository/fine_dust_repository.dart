import 'package:fine_dust/domain/entity/location_Info.dart';
import 'package:fine_dust/domain/entity/location_total_info.dart';

abstract interface class FineDustRepository {
  Future<List<LocationInfo>> getFineDustInfoList();

  Future<List<LocationInfo>> getUltraFineDustInfoList();

  Future<List<LocationInfo>> getOzoneInfoList();

  Future<LocationTotalInfo> getLocalAirInfo({required int locationId});
}