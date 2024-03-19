import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/domain/repository/bookmark_repository.dart';
import 'package:fine_dust/domain/repository/fine_dust_repository.dart';
import 'package:fine_dust/domain/usecase/bookmark/bookmark_location_uscase.dart';
import 'package:fine_dust/domain/usecase/bookmark/delete_bookmark_usecase.dart';
import 'package:fine_dust/domain/usecase/bookmark/get_bookmark_list_usecase.dart';
import 'package:fine_dust/domain/usecase/dustInfo/get_local_fine_dust_info_list_usecase.dart';
import 'package:fine_dust/presentation/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/location_fine_dust_bloc.dart';
import 'location_fine_dust_list.dart';

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
          child: BlocConsumer<LocationFineDustBloc, LocationFineDustState>(
            listener: (context, state) {
              if (state.status == LocationFineDustStatus.failure) {
                showErrorSnackBar(context);
              }
            },
            builder: (context, state) {
              return BlocBuilder<LocationFineDustBloc, LocationFineDustState>(
                builder: (context, state) {
                  return Stack(
                    children: [
                      body(
                        bookmarkList: state.bookmarkList ?? [],
                        locationFineDustList2: state.locationFineDustList ?? [],
                        refreshCallback: () async {
                          context
                              .read<LocationFineDustBloc>()
                              .add(const LocationFineDustEvent.fetch());
                        },
                        itemTapCallback: goToDetailScreen,
                        bookmarkCallback: (LocationCode locationCode) {
                          context.read<LocationFineDustBloc>().add(
                              LocationFineDustEvent.bookmark(locationCode));
                        },
                        deleteBookmarkCallback: (LocationCode locationCode) {
                          context.read<LocationFineDustBloc>().add(
                              LocationFineDustEvent.deleteBookmark(
                                  locationCode));
                        },
                      ),
                      if (state.status == LocationFineDustStatus.loading)
                        renderLoading(),
                    ],
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

    locationFineDustBloc.add(const LocationFineDustEvent.fetch());
    return locationFineDustBloc;
  }

  Widget body({
    required List<LocationFineDust> bookmarkList,
    required List<LocationFineDust> locationFineDustList2,
    required RefreshCallback refreshCallback,
    required ItemTapCallback itemTapCallback,
    required BookmarkCallback bookmarkCallback,
    required BookmarkCallback deleteBookmarkCallback,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (bookmarkList.isNotEmpty)
          ...bookmarkListViews(
            bookmarkList: bookmarkList,
            refreshCallback: refreshCallback,
            itemTapCallback: itemTapCallback,
            deleteBookmarkCallback: deleteBookmarkCallback,
          ),
        locationFineDustTitle(Strings.LOCATION_FINE_DUST_TITLE),
        locationFineDustList(
            list: locationFineDustList2,
            refreshCallback: refreshCallback,
            itemTapCallback: itemTapCallback,
            canBookmark: true,
            bookmarkCallback: bookmarkCallback,
            deleteBookmarkCallback: deleteBookmarkCallback),
      ],
    );
  }

  List<Widget> bookmarkListViews({
    required List<LocationFineDust> bookmarkList,
    required RefreshCallback refreshCallback,
    required ItemTapCallback itemTapCallback,
    required BookmarkCallback deleteBookmarkCallback,
  }) {
    return [
      locationFineDustTitle(Strings.BOOKMARK_TITLE),
      locationFineDustList(
          list: bookmarkList,
          refreshCallback: refreshCallback,
          itemTapCallback: itemTapCallback,
          deleteBookmarkCallback: deleteBookmarkCallback),
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
    required ItemTapCallback itemTapCallback,
    bool canBookmark = false,
    BookmarkCallback? bookmarkCallback,
    required BookmarkCallback deleteBookmarkCallback,
  }) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LocationFineDustList(
          list: list,
          refreshCallback: refreshCallback,
          itemTapCallback: itemTapCallback,
          canBookmark: canBookmark,
          bookmarkCallback: bookmarkCallback,
          deleteBookmarkCallback: deleteBookmarkCallback,
        ),
      ),
    );
  }

  Widget renderLoading() {
    return Container(
      color: Colors.black.withAlpha(100),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  void goToDetailScreen(LocationCode locationCode) {
    // todo go to detail screen
  }

  void showErrorSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(Strings.LOCATION_FINE_INFO_ERROR),
    ));
  }
}
