import 'dust_info.dart';
import 'location_code.dart';

class LocationTotalInfo {
  final LocationCode locationCode;
  final List<DustInfo> fineDustList;
  final List<DustInfo> ultraFineDustList;
  final List<DustInfo> ozoneList;

  LocationTotalInfo({
    required this.locationCode,
    required this.fineDustList,
    required this.ultraFineDustList,
    required this.ozoneList,
  });
}
