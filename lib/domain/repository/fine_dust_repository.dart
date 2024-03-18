import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/domain/entity/location_total_info.dart';

abstract interface class FineDustRepository {
  Future<List<LocationFineDust>> getLocationFineDustList();

  Future<LocationTotalInfo> getLocalAirInfo({required int locationCode});
}
