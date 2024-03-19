enum AirQualityStatus {
  excellent("최고"),
  good("좋음"),
  fair("양호"),
  moderate("보통"),
  poor("나쁨"),
  quitePoor("상당히나쁨"),
  veryPoor("매우나쁨"),
  worst("최악");

  final String displayName;
  const AirQualityStatus(this.displayName);
}
