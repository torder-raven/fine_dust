import 'package:fine_dust/domain/entity/dust_info.dart';
import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_fine_dust.freezed.dart';

@freezed
class LocationFineDust with _$LocationFineDust {
  factory LocationFineDust({
    required LocationCode locationCode,
    required DustInfo fineDust,
    required DustInfo ultraFineDust,
    required DustInfo ozone,
  }) = _LocationFineDust;
}
