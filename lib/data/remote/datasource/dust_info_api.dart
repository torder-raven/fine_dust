import 'package:dio/dio.dart';
import 'package:fine_dust/presentation/util/env_keys.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../entity/request/real_time_avg_list_distinct_by_province_request.dart';
import '../entity/response/real_time_avg_list_distinct_by_province_response.dart';

class DustInfoApi {
  final dio = Dio();
  final url =
      "${dotenv.get(EnvKeys.BASE_URL)}B552584/ArpltnStatsSvc/getCtprvnMesureLIst";

  Future<List<RealTimeAvgListDistinctByProvinceResponse>>
      getRealTimeAvgListByProvince(
          RealTimeAvgListDistinctByProvinceRequest request) async {
    try {
      final response = await dio.get(
        url,
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
