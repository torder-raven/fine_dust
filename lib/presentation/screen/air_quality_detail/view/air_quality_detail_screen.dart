import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/entity/air_quality_type.dart';
import 'package:fine_dust/domain/repository/bookmark_repository.dart';
import 'package:fine_dust/domain/usecase/bookmark/bookmark_location_uscase.dart';
import 'package:fine_dust/domain/usecase/bookmark/delete_bookmark_usecase.dart';
import 'package:fine_dust/domain/usecase/bookmark/get_is_bookmarked_location_usecase.dart';
import 'package:fine_dust/domain/usecase/dustInfo/get_local_air_info_usecase.dart';
import 'package:fine_dust/presentation/constant/default_values.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../../domain/entity/dust_info.dart';
import '../../../../domain/repository/fine_dust_repository.dart';
import '../../component/loading.dart';
import '../../component/lottie_animation.dart';
import '../bloc/air_quality_detail_bloc.dart';
import 'air_quality_in_daily_view.dart';
import 'air_quality_view.dart';

class AirQualityDetailScreen extends StatefulWidget {
  final LocationCode locationCode;

  const AirQualityDetailScreen({
    required this.locationCode,
    super.key,
  });

  @override
  State<AirQualityDetailScreen> createState() => _AirQualityDetailScreenState();
}

class _AirQualityDetailScreenState extends State<AirQualityDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [RepositoryProvider(create: (context) {})],
      child: BlocProvider(
        create: (context) => AirQualityDetailBloc(
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
        )..add(AirQualityDetailStarted(locationCode: widget.locationCode)),
        child: BlocBuilder<AirQualityDetailBloc, AirQualityDetailState>(
          builder: (context, state) {
            final Size size = MediaQuery.of(context).size;

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
                            context.read<AirQualityDetailBloc>().add(
                                  AirQualityDetailBookmarked(
                                    locationCode: widget.locationCode,
                                  ),
                                );
                          },
                          icon: AnimatedSize(
                            curve: Curves.ease,
                            duration: const Duration(milliseconds: 500),
                            child: Icon(
                              (state is AirQualityDetailSuccess &&
                                      state.isBookmarkedLocation == true)
                                  ? Icons.star_rounded
                                  : Icons.star_border_rounded,
                              color: Colors.yellow,
                              size: state is AirQualityDetailSuccess ? 30 : 0,
                            ),
                          ),
                        )
                      ],
                      pinned: true,
                      expandedHeight: state is AirQualityDetailSuccess
                          ? size.height * 0.25
                          : kToolbarHeight,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.blue[800],
                      leading: BackButton(
                        color: Colors.white,
                      ),
                      flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        expandedTitleScale: 2,
                        title: Container(
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            widget.locationCode.locationName,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        titlePadding: const EdgeInsets.all(16.0),
                      ),
                    ),
                    switch (state) {
                      AirQualityDetailInitial() =>
                        renderInitial(height: size.height * 0.75),
                      AirQualityDetailSuccess() => renderSuccess(state),
                      AirQualityDetailFailure() =>
                        renderFailure(height: size.height * 0.75),
                    }
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget renderInitial({required double height}) {
    return SliverToBoxAdapter(
      child: Container(
        height: height,
        child: Center(child: Loading()),
      ),
    );
  }

  Widget renderFailure({required double height}) {
    return SliverToBoxAdapter(
      child: Container(
        height: height,
        child: Center(
          child: Text(
            "대기질 정보를 불러오는데 실패했습니다.",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
          ),
        ),
      ),
    );
  }

  Widget renderSuccess(AirQualityDetailSuccess state) {
    return SliverPadding(
      padding: EdgeInsets.all(16.0),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            WalkingMenAnimation(),
            AirQualityView(
              airQualityType: AirQualityType.FINE_DUST,
              airQualityInfo: state.locationTotalInfo.fineDustList.first,
              onTap: () => showAirQualityBottomSheet(
                locationCode: state.locationTotalInfo.locationCode,
                airQualityType: AirQualityType.FINE_DUST,
                airQualityInfoList: state.locationTotalInfo.fineDustList,
              ),
            ),
            SizedBox(height: 16.0),
            AirQualityView(
              airQualityType: AirQualityType.ULTRA_FINE_DUST,
              airQualityInfo: state.locationTotalInfo.ultraFineDustList.first,
              onTap: () => showAirQualityBottomSheet(
                locationCode: state.locationTotalInfo.locationCode,
                airQualityType: AirQualityType.ULTRA_FINE_DUST,
                airQualityInfoList: state.locationTotalInfo.ultraFineDustList,
              ),
            ),
            SizedBox(height: 16.0),
            AirQualityView(
              airQualityType: AirQualityType.OZONE,
              airQualityInfo: state.locationTotalInfo.ozoneList.first,
              onTap: () => showAirQualityBottomSheet(
                locationCode: state.locationTotalInfo.locationCode,
                airQualityType: AirQualityType.OZONE,
                airQualityInfoList: state.locationTotalInfo.ozoneList,
              ),
            ),
          ],
        ),
      ),
    );
  }

  showAirQualityBottomSheet({
    required LocationCode locationCode,
    required AirQualityType airQualityType,
    required List<DustInfo> airQualityInfoList,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: DefaultValues.DEFAULT_RADIUS,
              topRight: DefaultValues.DEFAULT_RADIUS),
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
            SliverPadding(
              padding: EdgeInsets.all(16.0),
              sliver: SliverAppBar(
                leading: BackButton(
                  color: Colors.white,
                ),
                backgroundColor: Colors.blue[800]?.withOpacity(0.85),
                pinned: true,
                title: Text(
                  "${locationCode.locationName}의 ${airQualityType.displayName} 현황",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    24.0,
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.all(16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    AirQualityView(
                      airQualityType: airQualityType,
                      airQualityInfo: airQualityInfoList.first,
                    ),
                    SizedBox(height: 16.0),
                    AirQualityInDailyView(
                      title:
                          "최근 ${airQualityInfoList.length}시간 내 ${airQualityType.displayName} 지수", // TODO 리소스화
                      airQualityType: airQualityType,
                      airQualityList: airQualityInfoList,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
