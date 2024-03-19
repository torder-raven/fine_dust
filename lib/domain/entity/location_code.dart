enum LocationCode {
  daegu(22, "대구"),
  chungnam(34, "충남"),
  incheon(23, "인천"),
  daejeon(25, "대전"),
  gyeongbuk(37, "경북"),
  sejong(29, "세종"),
  gwangju(24, "광주"),
  jeonbuk(35, "전북"),
  gangwon(32, "강원"),
  ulsan(26, "울산"),
  jeonnam(36, "전남"),
  seoul(11, "서울"),
  busan(21, "부산"),
  jeju(39, "제주"),
  chungbuk(33, "충북"),
  gyeongnam(38, "경남"),
  gyeonggi(31, "경기"),
  undefined(-1, "");

  const LocationCode(this.code, this.locationName);

  final int code;
  final String locationName;
}
