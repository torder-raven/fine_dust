import 'package:fine_dust/data/remote/entity/response/real_time_avg_list_distinct_by_city_response.dart';
import 'package:fine_dust/domain/entity/air_quality_type.dart';
import 'package:fine_dust/domain/entity/dust_info.dart';

import '../../../../domain/entity/air_quality_status.dart';
import '../../../../domain/entity/location_code.dart';

extension DustInfoMapper on RealTimeAvgListDistinctByCityResponse {
  DustInfo toFindDustInfo(LocationCode locationCode) {
    num rawValue = cities[locationCode] ??= -1;
    return DustInfo(
        rawValue: rawValue,
        dateTime: dataTime,
        status: getQualityStatus(rawValue, AirQualityType.FINE_DUST));
  }

  DustInfo toUltraDustInfo(LocationCode locationCode) {
    num rawValue = cities[locationCode] ??= -1;
    return DustInfo(
        rawValue: rawValue,
        dateTime: dataTime,
        status: getQualityStatus(rawValue, AirQualityType.ULTRA_FINE_DUST));
  }

  DustInfo toOzoneInfo(LocationCode locationCode) {
    num rawValue = cities[locationCode] ??= -1;
    return DustInfo(
        rawValue: rawValue,
        dateTime: dataTime,
        status: getQualityStatus(rawValue, AirQualityType.OZONE));
  }

  String getQualityStatus(num value, AirQualityType type) {
    final levels = type.level;
    final status = [
      AirQualityStatus.excellent,
      AirQualityStatus.good,
      AirQualityStatus.fair,
      AirQualityStatus.moderate,
      AirQualityStatus.poor,
      AirQualityStatus.quitePoor,
      AirQualityStatus.veryPoor,
      AirQualityStatus.worst,
    ];

    for (int i = 0; i < levels.length; i++) {
      if (value <= levels[i]) {
        return status[i].displayName;
      }
    }
    return "알 수 없음";
  }
}
