import 'package:fine_dust/domain/entity/dust_info.dart';
import 'package:fine_dust/domain/entity/air_quality_type.dart';
import 'package:flutter/material.dart';

import 'air_quality_detail_card_view.dart';
import 'air_quality_level_bar.dart';

class AirQualityView extends StatelessWidget {
  final AirQualityType airQualityType;
  final DustInfo airQualityInfo;
  final Function()? onTap;

  const AirQualityView({
    required this.airQualityType,
    required this.airQualityInfo,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AirQualityDetailCardView(
      title: airQualityType.displayName,
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "${airQualityInfo.status}(${airQualityInfo.rawValue})", // TODO 리소스화
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          AirQualityLevelBar(
            levelMaxValue: airQualityType.level.last,
            rawValue: airQualityInfo.rawValue,
          )
        ],
      ),
    );
  }
}
