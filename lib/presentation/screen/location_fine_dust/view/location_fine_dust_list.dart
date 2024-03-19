import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/presentation/constant/strings.dart';
import 'package:flutter/material.dart';

import 'location_fine_dust_card.dart';

class LocationFineDustList extends StatelessWidget {
  final List<LocationFineDust> list;
  final RefreshCallback refreshCallback;
  final ItemTapCallback itemTapCallback;

  const LocationFineDustList({
    super.key,
    required this.list,
    required this.refreshCallback,
    required this.itemTapCallback,
  });

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return emptyListView();
    }

    return RefreshIndicator(
      onRefresh: refreshCallback,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () { itemTapCallback(index); },
            child: LocationFineDustCard(locationFineDust: list[index]),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 4.0,
          );
        },
        itemCount: list.length,
      ),
    );
  }

  Widget emptyListView() {
    return const Center(
      child: Text(Strings.LOCATION_FINE_INFO_IS_EMPTY),
    );
  }
}

typedef ItemTapCallback = void Function(int index);
