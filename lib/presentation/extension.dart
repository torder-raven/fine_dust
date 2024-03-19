import 'package:fine_dust/domain/entity/dust_info.dart';

extension DateTimeExtension on DateTime {
  String toTimeString() {
    const defaultPadString = "0";
    return "${hour.toString().padLeft(2, defaultPadString)}:${minute.toString().padLeft(2, defaultPadString)}";
  }
}

extension DustInfoExtension on DustInfo {
  String toStateAndUnit(String unit) => "$status $rawValue$unit";
}
