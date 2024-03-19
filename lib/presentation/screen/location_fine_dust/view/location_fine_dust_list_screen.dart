import 'package:fine_dust/domain/entity/location_code.dart';
import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/domain/repository/fine_dust_repository.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              locationFineDustTitle(),
              locationFineDustList(),
            ],
          ),
        ),
      ),
    );
  }

  LocationFineDustBloc createBloc(BuildContext context) {
    final locationFineDustBloc = LocationFineDustBloc(
      getLocalFineDustInfoListUsecase: GetLocalFineDustInfoListUsecase(
        repository: context.read<FineDustRepository>(),
      ),
    );

    locationFineDustBloc.add(const LocationFineDustEvent.fetch());
    return locationFineDustBloc;
  }

  Widget locationFineDustTitle() {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.all(8.0),
      child: Text(
        Strings.LOCATION_FINE_DUST_TITLE,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.w800),
      ),
    );
  }

  Widget locationFineDustList() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                    if (state.locationFineDustList != null)
                      renderList(context, state.locationFineDustList!),
                    if (state.status == LocationFineDustStatus.loading)
                      renderLoading(),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget renderLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget renderList(BuildContext context, List<LocationFineDust> list) {
    return LocationFineDustList(
      list: list,
      refreshCallback: () async {
        context
            .read<LocationFineDustBloc>()
            .add(const LocationFineDustEvent.fetch());
      },
      itemTapCallback: (int index) {
        goToDetailScreen(list[index].locationCode);
      },
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
