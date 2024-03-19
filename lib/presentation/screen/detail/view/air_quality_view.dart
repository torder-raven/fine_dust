import 'package:fine_dust/domain/entity/dust_info.dart';
import 'package:fine_dust/presentation/screen/detail/view/air_quality_level_bar.dart';
import 'package:fine_dust/presentation/screen/detail/view/detail_card_view.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entity/item_code.dart';

class AirQualityView extends StatelessWidget {
  final ItemCode type;
  final DustInfo dustInfo;
  final Function()? onTap;

  const AirQualityView({
    required this.type,
    required this.dustInfo,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DetailCardView(
      title: switch (type) { // TODO 리소스화
        ItemCode.FINE_DUST => "미세먼지(PM10)",
        ItemCode.ULTRA_FINE_DUST => "초미세먼지(PM2.5)",
        ItemCode.OZONE => "오존"
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${dustInfo.status}(${dustInfo.rawValue})",
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
            rawValue: dustInfo.rawValue,
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
