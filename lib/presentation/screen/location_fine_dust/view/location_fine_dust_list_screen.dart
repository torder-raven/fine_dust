import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/domain/repository/bookmark_repository.dart';
import 'package:fine_dust/domain/repository/fine_dust_repository.dart';
import 'package:fine_dust/domain/usecase/bookmark/bookmark_location_uscase.dart';
import 'package:fine_dust/domain/usecase/bookmark/delete_bookmark_usecase.dart';
import 'package:fine_dust/domain/usecase/bookmark/get_bookmark_list_usecase.dart';
import 'package:fine_dust/domain/usecase/dustInfo/get_local_fine_dust_info_list_usecase.dart';
import 'package:fine_dust/presentation/constant/colors.dart';
import 'package:fine_dust/presentation/constant/strings.dart';
import 'package:fine_dust/presentation/screen/air_quality_detail/view/air_quality_detail_screen.dart';
import 'package:fine_dust/presentation/screen/component/loading.dart';
import 'package:fine_dust/presentation/screen/component/lottie_animation.dart';
import 'package:fine_dust/presentation/screen/component/slidable_item_list/slidable_item_list.dart';
import 'package:fine_dust/presentation/screen/location_fine_dust/view/location_fine_dust_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/location_fine_dust_bloc.dart';

part 'location_fine_dust_list.dart';

class LocationFineDustListScreen extends StatefulWidget {
  const LocationFineDustListScreen({super.key});

  @override
  State<LocationFineDustListScreen> createState() =>
      _LocationFineDustListScreenState();
}

class _LocationFineDustListScreenState
    extends State<LocationFineDustListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: createBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.FINE_DUST_TITLE),
        ),
        body: SafeArea(
          bottom: false,
          child: BlocConsumer<LocationFineDustBloc, LocationFineDustState>(
            listener: (context, state) {
              if (state.status == LocationFineDustStatus.failure) {
                showErrorSnackBar(context);
              }
            },
            builder: (context, state) {
              return BlocBuilder<LocationFineDustBloc, LocationFineDustState>(
                builder: (context, state) {
                  return Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          ColorResource.PRIMARY_COLOR,
                          ColorResource.BACKGROUND_COLOR
                        ],
                      ),
                    ),
                    child: Stack(
                      children: [
                        LocationFineDustList(
                          state: state,
                        ),
                        if (state.status == LocationFineDustStatus.loading)
                          const Loading(),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  LocationFineDustBloc createBloc(BuildContext context) {
    final bookmarkRepository = context.read<BookmarkRepository>();
    final locationFineDustBloc = LocationFineDustBloc(
      getLocalFineDustInfoListUsecase: GetLocalFineDustInfoListUsecase(
        repository: context.read<FineDustRepository>(),
      ),
      bookmarkLocationUsecase: BookmarkLocationUsecase(
        repository: bookmarkRepository,
      ),
      deleteBookmarkUsecase: DeleteBookmarkUsecase(
        repository: bookmarkRepository,
      ),
      getBookmarkListUsecase: GetBookmarkListUsecase(
        repository: bookmarkRepository,
      ),
    );

    return locationFineDustBloc;
  }

  void showErrorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(Strings.LOCATION_FINE_INFO_ERROR),
    ));
  }
}

typedef LocationFineDustCallback = Function(LocationFineDust locationFineDust);
