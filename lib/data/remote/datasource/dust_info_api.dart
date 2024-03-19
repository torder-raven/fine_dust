import 'package:dio/dio.dart';
import 'package:fine_dust/data/remote/entity/request/real_time_avg_list_distinct_by_city_request.dart';
import 'package:fine_dust/data/remote/entity/request/real_time_avg_list_distinct_by_province_request.dart';
import 'package:fine_dust/data/remote/entity/response/real_time_avg_list_distinct_by_city_response.dart';
import 'package:fine_dust/data/remote/entity/response/real_time_avg_list_distinct_by_province_response.dart';
import 'package:fine_dust/presentation/util/env_keys.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DustInfoApi {
  final dio = Dio();
  final urlProvince =
      "${dotenv.get(EnvKeys.BASE_URL)}B552584/ArpltnStatsSvc/getCtprvnMesureSidoLIst";
  final urlCity =
      "${dotenv.get(EnvKeys.BASE_URL)}B552584/ArpltnStatsSvc/getCtprvnMesureLIst";

  // 시도별 실시간 평균정보 조회 ("daegu", "seoul" ...)
  Future<List<RealTimeAvgListDistinctByCityResponse>> getRealTimeAvgListByCity(
      RealTimeAvgListDistinctByCityRequest request) async {
    try {
      final response = await dio.get(
        urlCity,
        queryParameters: request.buildQueryParameters(),
      );

      return response.data["response"]["body"]["items"]
          .map<RealTimeAvgListDistinctByCityResponse>(
            (item) =>
            RealTimeAvgListDistinctByCityResponse.fromJson(json: item),
      )
          .toList();
    } on DioException catch (e) {
      return [];
    }
  }

  // 시군구별 실시간 평균정보 조회
  Future<List<RealTimeAvgListDistinctByProvinceRequest>>
  getRealTimeAvgListByProvince(
      RealTimeAvgListDistinctByProvinceRequest request) async {
    try {
      final response = await dio.get(
        urlProvince,
        queryParameters: request.buildQueryParameters(),
      );

      return response.data["response"]["body"]["items"]
          .map<RealTimeAvgListDistinctByProvinceResponse>(
            (item) =>
            RealTimeAvgListDistinctByProvinceResponse.fromJson(json: item),
      )
          .toList();
    } on DioException catch (e) {
      return [];
    }
  }
}
