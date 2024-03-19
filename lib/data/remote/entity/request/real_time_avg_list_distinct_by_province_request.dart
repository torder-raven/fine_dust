import 'package:fine_dust/presentation/util/env_keys.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class RealTimeAvgListDistinctByProvinceRequest {
  final String sidoName;

  RealTimeAvgListDistinctByProvinceRequest({
    required this.sidoName,
  });

  Map<String, String> buildQueryParameters() {
    return {
      "serviceKey": dotenv.env[EnvKeys.SERVICE_KEY]!,
      "returnType": "json",
      "itemCode": sidoName,
      "dataGubun": "HOUR",
    };
  }
}
