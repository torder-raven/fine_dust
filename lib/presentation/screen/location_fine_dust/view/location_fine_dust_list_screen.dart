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
import 'package:fine_dust/presentation/screen/component/loading.dart';
import 'package:fine_dust/presentation/screen/component/slidable_item_list/slidable_item_list.dart';
import 'package:fine_dust/presentation/screen/detail/view/detail_screen.dart';
import 'package:fine_dust/presentation/screen/location_fine_dust/view/location_fine_dust_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/location_fine_dust_bloc.dart';

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
                        body(
                          bookmarkList: state.bookmarkList ?? [],
                          locationFineDustList2:
                              state.locationFineDustList ?? [],
                          refreshCallback: () async {
                            context
                                .read<LocationFineDustBloc>()
                                .add(const LocationFineDustEvent.fetch());
                          },
                          itemClickCallback: (locationFineDust) {
                            goToDetailScreen(locationFineDust.locationCode);
                          },
                          bookmarkCallback: (locationFineDust) {
                            context.read<LocationFineDustBloc>().add(
                                LocationFineDustEvent.bookmark(
                                    locationFineDust.locationCode));
                          },
                          deleteBookmarkCallback: (locationFineDust) {
                            context.read<LocationFineDustBloc>().add(
                                LocationFineDustEvent.deleteBookmark(
                                    locationFineDust.locationCode));
                          },
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
      bookmarkLocationUsecase:
          BookmarkLocationUsecase(repository: bookmarkRepository),
      deleteBookmarkUsecase:
          DeleteBookmarkUsecase(repository: bookmarkRepository),
      getBookmarkListUsecase:
          GetBookmarkListUsecase(repository: bookmarkRepository),
    );

    return locationFineDustBloc;
  }

  Widget body({
    required List<LocationFineDust> bookmarkList,
    required List<LocationFineDust> locationFineDustList2,
    required RefreshCallback refreshCallback,
    required LocationFineDustCallback itemClickCallback,
    required SlidableActionCallback bookmarkCallback,
    required SlidableActionCallback deleteBookmarkCallback,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (bookmarkList.isNotEmpty)
          ...bookmarkListViews(
            bookmarkList: bookmarkList,
            refreshCallback: refreshCallback,
            itemClickCallback: itemClickCallback,
            deleteBookmarkCallback: deleteBookmarkCallback,
          ),
        locationFineDustTitle(Strings.LOCATION_FINE_DUST_TITLE),
        locationFineDustList(
          list: locationFineDustList2,
          refreshCallback: refreshCallback,
          itemClickCallback: itemClickCallback,
          startActionList: [
            SlidableItemAction<LocationFineDust>(
              backgroundColor: ColorResource.PRIMARY_COLOR,
              foregroundColor: Colors.yellow,
              icon: Icons.star_border_outlined,
              callback: bookmarkCallback,
            ),
          ],
        ),
      ],
    );
  }

  List<Widget> bookmarkListViews({
    required List<LocationFineDust> bookmarkList,
    required RefreshCallback refreshCallback,
    required LocationFineDustCallback itemClickCallback,
    required SlidableActionCallback deleteBookmarkCallback,
  }) {
    return [
      locationFineDustTitle(Strings.BOOKMARK_TITLE),
      locationFineDustList(
        list: bookmarkList,
        refreshCallback: refreshCallback,
        itemClickCallback: itemClickCallback,
        startActionList: [
          SlidableItemAction<LocationFineDust>(
            backgroundColor: ColorResource.PRIMARY_COLOR,
            foregroundColor: Colors.yellow,
            icon: Icons.star,
            callback: deleteBookmarkCallback,
          ),
        ],
      ),
    ];
  }

  Widget locationFineDustTitle(String title) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
      ),
    );
  }

  Widget locationFineDustList({
    required List<LocationFineDust> list,
    required RefreshCallback refreshCallback,
    required LocationFineDustCallback itemClickCallback,
    required List<SlidableItemAction<LocationFineDust>> startActionList,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SlidableItemList<LocationFineDust>(
          list: list,
          itemClickCallback: itemClickCallback,
          refreshCallback: refreshCallback,
          startActionList: startActionList,
          itemBuilder: <LocationFineDust>(context, locationFineDust) {
            return LocationFineDustCard(locationFineDust: locationFineDust);
          },
        ),
      ),
    );
  }

  void goToDetailScreen(LocationCode locationCode) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return DetailScreen(locationCode: locationCode);
        },
      ),
    );
  }

  void showErrorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(Strings.LOCATION_FINE_INFO_ERROR),
    ));
  }
}

typedef LocationFineDustCallback = Function(LocationFineDust locationFineDust);
