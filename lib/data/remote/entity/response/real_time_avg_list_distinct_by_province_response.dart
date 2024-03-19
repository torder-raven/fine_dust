class RealTimeAvgListDistinctByProvinceResponse {
  final String cityName;
  final String cityNameEng;
  final double coValue;
  final double khaiValue;
  final double no2Value;
  final double o3Value;
  final double pm10Value;
  final double pm25Value;
  final double so2Value;
  final DateTime dataTime;
  final String itemCode;

  RealTimeAvgListDistinctByProvinceResponse.fromJson({required Map<String, dynamic> json})
      : cityName = json['cityName'],
        cityNameEng = json['cityNameEng'],
        coValue = double.parse(json['coValue'] ?? '0'),
        khaiValue = double.parse(json['khaiValue'] ?? '0'),
        no2Value = double.parse(json['no2Value'] ?? '0'),
        o3Value = double.parse(json['o3Value'] ?? '0'),
        pm10Value = double.parse(json['pm10Value'] ?? '0'),
        pm25Value = double.parse(json['pm25Value'] ?? '0'),
        so2Value = double.parse(json['so2Value'] ?? '0'),
        dataTime = DateTime.parse(json['dataTime']),
        itemCode = json['itemCode'];
}
