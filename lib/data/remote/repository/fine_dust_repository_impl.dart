import 'package:fine_dust/data/remote/datasource/dust_info_api.dart';
import 'package:fine_dust/data/remote/entity/mapper/dust_info_mapper.dart';
import 'package:fine_dust/data/remote/entity/request/real_time_avg_list_distinct_by_city_request.dart';
import 'package:fine_dust/data/remote/entity/response/real_time_avg_list_distinct_by_city_response.dart';
import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/domain/entity/location_total_info.dart';

import '../../../domain/entity/air_quality_type.dart';
import '../../../domain/repository/fine_dust_repository.dart';

class FineDustRepositoryImpl implements FineDustRepository {
  final DustInfoApi _api;

  FineDustRepositoryImpl({
    required DustInfoApi api,
  }) : _api = api;

  Future<List<RealTimeAvgListDistinctByCityResponse>>
      getFineDustInfoListInRealTimeAvgListByCity() =>
          _api.getRealTimeAvgListByCity(
            RealTimeAvgListDistinctByCityRequest(
              itemCode: AirQualityType.FINE_DUST,
            ),
          );

  Future<List<RealTimeAvgListDistinctByCityResponse>>
      getUltraInfoListInRealTimeAvgListByCity() =>
          _api.getRealTimeAvgListByCity(
            RealTimeAvgListDistinctByCityRequest(
              itemCode: AirQualityType.ULTRA_FINE_DUST,
            ),
          );

  Future<List<RealTimeAvgListDistinctByCityResponse>>
      getOzoneInfoListInRealTimeAvgListByCity() =>
          _api.getRealTimeAvgListByCity(
            RealTimeAvgListDistinctByCityRequest(
              itemCode: AirQualityType.OZONE,
            ),
          );

  @override
  Future<List<LocationFineDust>> getLocationFineDustList() async {
    final List<RealTimeAvgListDistinctByCityResponse> fineDustInfoList =
        await getFineDustInfoListInRealTimeAvgListByCity();
    final List<RealTimeAvgListDistinctByCityResponse> ultraInfoList =
        await getUltraInfoListInRealTimeAvgListByCity();
    final List<RealTimeAvgListDistinctByCityResponse> ozoneInfoList =
        await getOzoneInfoListInRealTimeAvgListByCity();

    return LocationCode.values
        .where((locationCode) => locationCode != LocationCode.undefined)
        .map(
          (locationCode) => LocationFineDust(
            locationCode: locationCode,
            fineDust: fineDustInfoList.first.toFindDustInfo(locationCode),
            ultraFineDust: ultraInfoList.first.toUltraDustInfo(locationCode),
            ozone: ozoneInfoList.first.toOzoneInfo(locationCode),
          ),
        )
        .toList();
  }

  @override
  Future<LocationTotalInfo> getLocalAirInfo({required int locationCode}) async {
    final List<RealTimeAvgListDistinctByCityResponse> fineDustInfoList =
        await getFineDustInfoListInRealTimeAvgListByCity();
    final List<RealTimeAvgListDistinctByCityResponse> ultraInfoList =
        await getUltraInfoListInRealTimeAvgListByCity();
    final List<RealTimeAvgListDistinctByCityResponse> ozoneInfoList =
        await getOzoneInfoListInRealTimeAvgListByCity();

    LocationCode _locationCode = LocationCode.values
        .where((locationCode) => locationCode != LocationCode.undefined)
        .singleWhere((element) => element.code == locationCode);

    return LocationTotalInfo(
      locationCode: _locationCode,
      fineDustList: fineDustInfoList
          .map((response) => response.toFindDustInfo(_locationCode))
          .toList(),
      ultraFineDustList: ultraInfoList
          .map((response) => response.toUltraDustInfo(_locationCode))
          .toList(),
      ozoneList: ozoneInfoList
          .map((response) => response.toOzoneInfo(_locationCode))
          .toList(),
    );
  }
}
