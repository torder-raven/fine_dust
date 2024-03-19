import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../../domain/entity/item_code.dart';
import '../../../../presentation/util/env_keys.dart';

class RealTimeAvgListDistinctByCityRequest {
  final ItemCode itemCode;

  RealTimeAvgListDistinctByCityRequest({
    required this.itemCode,
  });

  Map<String, String> buildQueryParameters() {
    return {
      "serviceKey": dotenv.env[EnvKeys.SERVICE_KEY]!,
      "returnType": "json",
      "itemCode": itemCode.raw,
      "dataGubun": "HOUR",
      // "searchCondition": "WEEK",
    };
  }
}
