import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/entity/location_total_info.dart';
import 'package:fine_dust/domain/usecase/dustInfo/get_local_air_info_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entity/dust_info.dart';
import '../bloc/detail_bloc.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LocationTotalInfo locationTotalInfo = LocationTotalInfo(
      locationCode: LocationCode.seoul,
      fineDustList: [
        DustInfo(
          rawValue: 1,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
      ],
      ultraFineDustList: [
        DustInfo(
          rawValue: 1,
          dateTime: DateTime.now(),
          status: "좋음",
        ),
      ],
      ozoneList: [
        DustInfo(
          rawValue: 1,
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
                      // stretch: true,
                      pinned: true,
                      expandedHeight: 200.0,
                      // elevation: 2,
                      // collapsedHeight: 50.0,
                      shadowColor: Colors.black,
                      backgroundColor: Colors.blue[800],
                      leading: BackButton(
                        color: Colors.white,
                      ),
                      flexibleSpace: FlexibleSpaceBar(
                        // background: , // TODO 이미지 넣으면 딱인데..
                        expandedTitleScale: 2,
                        title: Text(locationTotalInfo.locationCode.locationName),
                        titlePadding: EdgeInsets.all(16.0),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [],
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
}
