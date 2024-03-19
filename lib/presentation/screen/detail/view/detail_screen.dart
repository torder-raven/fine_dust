import 'package:fine_dust/domain/entity/item_code.dart';
import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/entity/location_total_info.dart';
import 'package:fine_dust/presentation/screen/detail/view/air_quality_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entity/dust_info.dart';
import '../bloc/detail_bloc.dart';
import 'air_quality_in_daily_view.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LocationTotalInfo locationTotalInfo = LocationTotalInfo(
      locationCode: LocationCode.seoul,
      fineDustList: [
        DustInfo(
          rawValue: 0,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
        DustInfo(
          rawValue: 0,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
      ],
      ultraFineDustList: [
        DustInfo(
          rawValue: 365,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
        DustInfo(
          rawValue: 0,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
        DustInfo(
          rawValue: 0,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
      ],
      ozoneList: [
        DustInfo(
          rawValue: 20,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
        DustInfo(
          rawValue: 0,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
        DustInfo(
          rawValue: 0,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
        DustInfo(
          rawValue: 0,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
        DustInfo(
          rawValue: 0,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
        DustInfo(
          rawValue: 0,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
      ],
    );

    return MultiRepositoryProvider(
      providers: [RepositoryProvider(create: (context) {})],
      child: BlocProvider(
        create: (context) => DetailBloc(),
        child: BlocBuilder<DetailBloc, DetailState>(
          builder: (context, state) {
            return Scaffold(
              body: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue[800]!,
                      Colors.blue[400]!,
                    ],
                  ),
                ),
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      pinned: true,
                      expandedHeight: 200.0,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.blue[800],
                      leading: BackButton(
                        color: Colors.white,
                      ),
                      flexibleSpace: FlexibleSpaceBar(
                        // background: , // TODO 이미지 넣으면 딱인데..
                        expandedTitleScale: 2,
                        title: Text(
                          locationTotalInfo.locationCode.locationName,
                        ),
                        titlePadding: EdgeInsets.all(16.0),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          AirQualityView(
                            airQualityType: ItemCode.FINE_DUST,
                            airQualityInfo: locationTotalInfo.fineDustList.first,
                            onTap: () => showAirQualityBottomSheet(
                              context: context,
                              locationCode: locationTotalInfo.locationCode,
                              airQualityType: ItemCode.FINE_DUST,
                              airQualityInfoList: locationTotalInfo.fineDustList,
                            ),
                          ),
                          AirQualityView(
                            airQualityType: ItemCode.ULTRA_FINE_DUST,
                            airQualityInfo: locationTotalInfo.ultraFineDustList.first,
                            onTap: () => showAirQualityBottomSheet(
                              context: context,
                              locationCode: locationTotalInfo.locationCode,
                              airQualityType: ItemCode.ULTRA_FINE_DUST,
                              airQualityInfoList: locationTotalInfo.ultraFineDustList,
                            ),
                          ),
                          AirQualityView(
                            airQualityType: ItemCode.OZONE,
                            airQualityInfo: locationTotalInfo.ozoneList.first,
                            onTap: () => showAirQualityBottomSheet(
                              context: context,
                              locationCode: locationTotalInfo.locationCode,
                              airQualityType: ItemCode.OZONE,
                              airQualityInfoList: locationTotalInfo.ozoneList,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  showAirQualityBottomSheet({
    required BuildContext context,
    required LocationCode locationCode,
    required ItemCode airQualityType,
    required List<DustInfo> airQualityInfoList,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue[800]!,
              Colors.blue[400]!,
            ],
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.25,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: BackButton(
                color: Colors.white,
              ),
              backgroundColor: Colors.blue[800]?.withOpacity(0.85),
              pinned: true,
              title: Text(
                locationCode.locationName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  24.0,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  AirQualityView(
                    airQualityType: airQualityType,
                    airQualityInfo: airQualityInfoList.first,
                  ),
                  AirQualityInDailyView(
                    title: "최근 ${airQualityInfoList.length}시간 내 ${airQualityType.raw} 지수", // TODO 리소스화
                    airQualityType: airQualityType,
                    airQualityList: airQualityInfoList,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
