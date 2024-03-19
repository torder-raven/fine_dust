import 'package:fine_dust/data/remote/datasource/dust_info_api.dart';
import 'package:fine_dust/data/remote/entity/request/real_time_avg_list_distinct_by_city_request.dart';
import 'package:fine_dust/data/remote/mapper/dust_info_mapper.dart';
import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/domain/entity/location_total_info.dart';

import '../../../domain/entity/item_code.dart';
import '../../../domain/repository/fine_dust_repository.dart';

class FineDustRepositoryImpl implements FineDustRepository {
  final DustInfoApi _api;

  FineDustRepositoryImpl({
    required DustInfoApi api,
  }) : _api = api;

  @override
  Future<List<LocationFineDust>> getLocationFineDustList() async {
    final fineDustInfoList = await _api.getRealTimeAvgListByCity(
      RealTimeAvgListDistinctByCityRequest(itemCode: ItemCode.FINE_DUST),
    );
    final ultraInfoList = await _api.getRealTimeAvgListByCity(
      RealTimeAvgListDistinctByCityRequest(itemCode: ItemCode.ULTRA_FINE_DUST),
    );
    final ozoneInfoList = await _api.getRealTimeAvgListByCity(
      RealTimeAvgListDistinctByCityRequest(itemCode: ItemCode.OZONE),
    );

    final List<LocationFineDust> locationFineDustList = [];
    LocationCode.values.forEach((element) {
      locationFineDustList.add(
        LocationFineDust(
          locationCode: element,
          fineDust: fineDustInfoList[0].dataTime.toFineDustInfo(),
          ultraFineDust: ultraInfoList[0].chungbuk.toUltraDustInfo(),
          ozone: ozoneInfoList[0].chungbuk.toOzoneInfo(),
        ),
      );
    });

    return locationFineDustList;
  }

  @override
  Future<LocationTotalInfo> getLocalAirInfo({required int locationCode}) async {

    final fineDustInfoList = (await _api.getRealTimeAvgListByCity(
      RealTimeAvgListDistinctByCityRequest(itemCode: ItemCode.FINE_DUST),
    )).map((e) => LocationTotalInfo(
      [locationCode]
    ));
    final ultraInfoList = await _api.getRealTimeAvgListByCity(
      RealTimeAvgListDistinctByCityRequest(itemCode: ItemCode.ULTRA_FINE_DUST),
    );
    final ozoneInfoList = await _api.getRealTimeAvgListByCity(
      RealTimeAvgListDistinctByCityRequest(itemCode: ItemCode.OZONE),
    );
  }
}
