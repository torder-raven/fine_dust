enum ItemCode {
  FINE_DUST("PM10"),
  ULTRA_FINE_DUST("PM2.5"),
  OZONE("O3");

  const ItemCode(this.raw);
  final String raw;

  factory ItemCode.parseItemCode(String raw) {
    return ItemCode.values.byName(raw);
  }
}
