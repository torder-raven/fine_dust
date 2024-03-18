import 'package:fine_dust/presentation/util/env_keys.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ProvinceRequest {
  final String itemCode;

  ProvinceRequest({
    required this.itemCode,
  });

  Map<String, String> buildQueryParameters() {
    return {
      "serviceKey": dotenv.env[EnvKeys.SERVICE_KEY]!,
      "returnType": "json",
      "itemCode": itemCode,
      "dataGubun": "HOUR",
      "searchCondition": "WEEK",
    };
  }
}
