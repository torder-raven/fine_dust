import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/entity/air_quailty_type.dart';
import 'package:fine_dust/domain/entity/location_total_info.dart';
import 'package:fine_dust/domain/repository/bookmark_repository.dart';
import 'package:fine_dust/domain/usecase/bookmark/bookmark_location_uscase.dart';
import 'package:fine_dust/domain/usecase/bookmark/delete_bookmark_usecase.dart';
import 'package:fine_dust/domain/usecase/bookmark/get_is_bookmarked_location_usecase.dart';
import 'package:fine_dust/domain/usecase/dustInfo/get_local_air_info_usecase.dart';
import 'package:fine_dust/presentation/screen/detail/view/air_quality_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entity/dust_info.dart';
import '../../../../domain/repository/fine_dust_repository.dart';
import '../bloc/detail_bloc.dart';
import 'air_quality_in_daily_view.dart';

class DetailScreen extends StatelessWidget {
  final LocationCode locationCode;

  const DetailScreen({
    required this.locationCode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [RepositoryProvider(create: (context) {})],
      child: BlocProvider(
        create: (context) => DetailBloc(
          getLocalAirInfoUsecase: GetLocalAirInfoUsecase(
            repository: context.read<FineDustRepository>(),
          ),
          bookmarkLocationUsecase: BookmarkLocationUsecase(
            repository: context.read<BookmarkRepository>(),
          ),
          deleteBookmarkUsecase: DeleteBookmarkUsecase(
            repository: context.read<BookmarkRepository>(),
          ),
          getIsBookmarkedLocationUsecase: GetIsBookmarkedLocationUsecase(
            repository: context.read<BookmarkRepository>(),
          ),
        )..add(DetailEvent.started(locationCode)),
        child: BlocBuilder<DetailBloc, DetailState>(
          builder: (context, state) {
            if (state.status == DetailStatus.success) {
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
                        actions: [
                          IconButton(
                            onPressed: () {
                              context.read<DetailBloc>().add(
                                  DetailEvent.onPressBookmarked(locationCode));
                            },
                            icon: Icon(
                              state.isBookmarkedLocation == true
                                  ? Icons.star_rounded
                                  : Icons.star_border_rounded,
                              color: Colors.yellow,
                            ),
                          )
                        ],
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
                            state.locationTotalInfo!.locationCode.locationName,
                          ),
                          titlePadding: EdgeInsets.all(16.0),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            AirQualityView(
                              airQualityType: AirQualityType.FINE_DUST,
                              airQualityInfo:
                                  state.locationTotalInfo!.fineDustList.first,
                              onTap: () => showAirQualityBottomSheet(
                                context: context,
                                locationCode:
                                    state.locationTotalInfo!.locationCode,
                                airQualityType: AirQualityType.FINE_DUST,
                                airQualityInfoList:
                                    state.locationTotalInfo!.fineDustList,
                              ),
                            ),
                            AirQualityView(
                              airQualityType: AirQualityType.ULTRA_FINE_DUST,
                              airQualityInfo: state
                                  .locationTotalInfo!.ultraFineDustList.first,
                              onTap: () => showAirQualityBottomSheet(
                                context: context,
                                locationCode:
                                    state.locationTotalInfo!.locationCode,
                                airQualityType: AirQualityType.ULTRA_FINE_DUST,
                                airQualityInfoList:
                                    state.locationTotalInfo!.ultraFineDustList,
                              ),
                            ),
                            AirQualityView(
                              airQualityType: AirQualityType.OZONE,
                              airQualityInfo:
                                  state.locationTotalInfo!.ozoneList.first,
                              onTap: () => showAirQualityBottomSheet(
                                context: context,
                                locationCode:
                                    state.locationTotalInfo!.locationCode,
                                airQualityType: AirQualityType.OZONE,
                                airQualityInfoList:
                                    state.locationTotalInfo!.ozoneList,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        ),
      ),
    );
  }

  showAirQualityBottomSheet({
    required BuildContext context,
    required LocationCode locationCode,
    required AirQualityType airQualityType,
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
                    title:
                        "최근 ${airQualityInfoList.length}시간 내 ${airQualityType.displayName} 지수", // TODO 리소스화
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
