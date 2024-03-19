enum AirQualityType {
  FINE_DUST("PM10", "미세먼지", [15, 30, 40, 50, 75, 100, 150]),
  ULTRA_FINE_DUST("PM25", "초미세먼지", [8, 15, 20, 25, 37, 50, 75]),
  OZONE("O3", "오존", [0.02, 0.03, 0.06, 0.09, 0.12, 0.15, 0.38]);

  const AirQualityType(this.code, this.displayName, this.level);
  final String code;
  final String displayName;
  final List<num> level;

  factory AirQualityType.parseItemCode(String raw) {
    return AirQualityType.values.byName(raw);
  }
}
