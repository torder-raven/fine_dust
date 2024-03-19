import 'package:fine_dust/domain/entity/dust_info.dart';

extension DustInfoMapper on num {
  DustInfo toFineDustInfo() => DustInfo(
      rawValue: this,
      dateTime: dataTime,
      status: getFineDustQualityStatus(this));
  DustInfo toUltraDustInfo() => DustInfo(
      rawValue: this,
      dateTime: dataTime,
      status: getUltraFineDustQualityStatus(this));
  DustInfo toOzoneInfo() => DustInfo(
      rawValue: this,
      dateTime: dataTime,
      status: getUltraFineDustQualityStatus(this));

  String getFineDustQualityStatus(num value) {
    if (value >= 0 && value <= 15) return "최고";
    if (value >= 16 && value <= 30) return "좋음";
    if (value >= 31 && value <= 40) return "양호";
    if (value >= 41 && value <= 50) return "보통";
    if (value >= 51 && value <= 75) return "나쁨";
    if (value >= 76 && value <= 100) return "상당히나쁨";
    if (value >= 101 && value <= 150) return "매우나쁨";
    return "최악";
  }

  String getUltraFineDustQualityStatus(num value) {
    if (value >= 0 && value <= 8) return "최고";
    if (value >= 9 && value <= 15) return "좋음";
    if (value >= 16 && value <= 20) return "양호";
    if (value >= 21 && value <= 25) return "보통";
    if (value >= 26 && value <= 37) return "나쁨";
    if (value >= 38 && value <= 50) return "상당히나쁨";
    if (value >= 51 && value <= 75) return "매우나쁨";
    return "최악";
  }

  String getOzoneQualityStatus(num value) {
    if (value >= 0 && value <= 0.02) return "최고";
    if (value > 0.02 && value <= 0.03) return "좋음";
    if (value > 0.03 && value <= 0.06) return "양호";
    if (value > 0.06 && value <= 0.09) return "보통";
    if (value > 0.09 && value <= 0.12) return "나쁨";
    if (value > 0.12 && value <= 0.15) return "상당히나쁨";
    if (value > 0.15 && value <= 0.38) return "매우나쁨";
    return "최악";
  }
}
