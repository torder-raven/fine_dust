import 'package:fine_dust/presentation/screen/air_quality_detail/view/air_quality_level_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../domain/entity/air_quality_type.dart';
import '../../../../domain/entity/dust_info.dart';

class AirQualityInHourView extends StatelessWidget {
  final AirQualityType airQualityType;
  final DustInfo airQuality;

  const AirQualityInHourView({
    required this.airQualityType,
    required this.airQuality,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              "${airQuality.dateTime.hour}:00",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: AirQualityLevelBar(
                levelMaxValue: airQualityType.level.last,
                rawValue: airQuality.rawValue,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              airQuality.status,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
