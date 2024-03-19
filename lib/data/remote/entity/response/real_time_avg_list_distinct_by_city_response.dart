import 'dart:convert';

import 'package:fine_dust/domain/entity/location_code.dart';

class RealTimeAvgListDistinctByCityResponse {
  Map<LocationCode, num> cities;
  final DateTime dataTime;
  final String itemCode;

  RealTimeAvgListDistinctByCityResponse(
      {required this.cities, required this.dataTime, required this.itemCode});

  factory RealTimeAvgListDistinctByCityResponse.fromJson(
      {required Map<String, dynamic> json}) {
    Map<LocationCode, num> cities = {
      for (var code in LocationCode.values.where((element) => element != LocationCode.undefined))
        code: num.parse(
          json[code.name],
        )
    };

    return RealTimeAvgListDistinctByCityResponse(
      cities: cities,
      dataTime: DateTime.parse(json['dataTime']),
      itemCode: json['itemCode'],
    );
  }
}
