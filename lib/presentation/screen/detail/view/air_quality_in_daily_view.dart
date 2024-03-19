import 'package:fine_dust/presentation/screen/detail/view/detail_card_view.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entity/dust_info.dart';
import '../../../../domain/entity/item_code.dart';
import 'air_quality_in_hour_view.dart';

class AirQualityInDailyView extends StatelessWidget {
  final String title;
  final ItemCode airQualityType;
  final List<DustInfo> airQualityList;

  const AirQualityInDailyView({
    required this.title,
    required this.airQualityType,
    required this.airQualityList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DetailCardView(
      title: title,
      child: Column(
        children: airQualityList
            .map(
              (dustInfo) => AirQualityInHourView(
                hour: "${dustInfo.dateTime.hour}:00", // TODO 리소스화
                status: dustInfo.status,
              ),
            )
            .toList(),
      ),
    );
  }
}
