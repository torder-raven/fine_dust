enum LocationCode {
  SEOUL("seoul", "서울"),
  BUSAN("busan", "부산"),
  undefined("undefined", "");

  const LocationCode(this.code, this.locationName);

  final String code;
  final String locationName;

  factory LocationCode.getByCode(String code) {
    return LocationCode.values.firstWhere(
      (value) => value.code == code,
      orElse: () => LocationCode.undefined,
    );
  }
}
