import 'package:flutter/material.dart';

import '../../../../domain/entity/dust_info.dart';
import '../../../../domain/entity/air_quality_type.dart';
import 'air_quality_detail_card_view.dart';
import 'air_quality_in_hour_view.dart';

class AirQualityInDailyView extends StatelessWidget {
  final String title;
  final AirQualityType airQualityType;
  final List<DustInfo> airQualityList;

  const AirQualityInDailyView({
    required this.title,
    required this.airQualityType,
    required this.airQualityList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AirQualityDetailCardView(
      title: title,
      child: Column(
        children: airQualityList
            .map(
              (airQuality) => AirQualityInHourView(
                airQualityType: airQualityType,
                airQuality: airQuality,
              ),
            )
            .toList(),
      ),
    );
  }
}
