import 'dust_info.dart';
import 'location_code.dart';

class LocationInfo {
  final LocationCode locationCode;
  final DustInfo dustInfo;

  LocationInfo({
    required this.locationCode,
    required this.dustInfo,
  });
}
