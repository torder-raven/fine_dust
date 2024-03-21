import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../../domain/entity/air_quality_type.dart';
import '../../../../presentation/util/env_keys.dart';

class RealTimeAvgListDistinctByCityRequest {
  final AirQualityType itemCode;

  RealTimeAvgListDistinctByCityRequest({
    required this.itemCode,
  });

  Map<String, String> buildQueryParameters() {
    return {
      "serviceKey": dotenv.env[EnvKeys.SERVICE_KEY]!,
      "returnType": "json",
      "itemCode": itemCode.code,
      "dataGubun": "HOUR",
    };
  }
}
