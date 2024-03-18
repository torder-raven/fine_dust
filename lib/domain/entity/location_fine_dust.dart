import 'package:fine_dust/domain/entity/dust_info.dart';
import 'package:fine_dust/domain/entity/location_code.dart';

class LocationFineDust {
  LocationFineDust({
    required this.locationCode,
    required this.fineDust,
    required this.ultraFineDust,
    required this.ozone,
  });

  final LocationCode locationCode;
  final DustInfo fineDust;
  final DustInfo ultraFineDust;
  final DustInfo ozone;
}
