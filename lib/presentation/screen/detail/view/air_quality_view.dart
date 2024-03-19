import 'package:fine_dust/domain/entity/dust_info.dart';
import 'package:fine_dust/presentation/screen/detail/view/air_quality_level_bar.dart';
import 'package:fine_dust/presentation/screen/detail/view/detail_card_view.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entity/item_code.dart';

class AirQualityView extends StatelessWidget {
  final ItemCode airQualityType;
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
    return DetailCardView(
      title: airQualityType.raw,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${airQualityInfo.status}(${airQualityInfo.rawValue})", // TODO 리소스화
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          AirQualityLevelBar(
            levelMaxValue: 150,
            rawValue: airQualityInfo.rawValue,
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
