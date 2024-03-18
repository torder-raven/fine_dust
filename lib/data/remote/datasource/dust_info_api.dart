import 'package:dio/dio.dart';
import 'package:fine_dust/presentation/util/env_keys.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../entity/request/province_request.dart';
import '../entity/response/province_response.dart';


class DustInfoApi {
  final dio = Dio();
  final url =
      "${dotenv.get(EnvKeys.BASE_URL)}ArpltnStatsSvc/getCtprvnMesureLIst";

  Future<List<ProvinceResponse>> getRealTimeAvgListByProvince(
      ProvinceRequest provinceRequest) async {
    try {
      final response = await dio.get(
        url,
        queryParameters: provinceRequest.buildQueryParameters(),
      );

      return response.data["response"]["body"]["items"]
          .map<ProvinceResponse>(
            (item) => ProvinceResponse.fromJson(json: item),
          )
          .toList();
    } on DioException catch (e) {
      return [];
    }
  }
}
