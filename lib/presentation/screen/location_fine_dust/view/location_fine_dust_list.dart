part of 'location_fine_dust_list_screen.dart';

class LocationFineDustList extends StatelessWidget {
  final LocationFineDustState state;

  const LocationFineDustList({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MovingCloudAnimation(),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: SlidableItemList<LocationFineDust>(
              list: state.sortedList,
              refreshCallback: () async {
                context
                    .read<LocationFineDustBloc>()
                    .add(const LocationFineDustEvent.fetch());
              },
              itemClickCallback: (locationFineDust) {
                goToDetailScreen(context, locationFineDust.locationCode);
              },
              startActionList: [
                SlidableItemAction<LocationFineDust>(
                  backgroundColor: ColorResource.PRIMARY_COLOR,
                  foregroundColor: Colors.yellow,
                  icon: Icons.star,
                  callback: (LocationFineDust locationFineDust) {
                    if (isBookmark(locationFineDust)) {
                      context.read<LocationFineDustBloc>().add(
                          LocationFineDustEvent.deleteBookmark(
                              locationFineDust.locationCode));
                    } else {
                      context.read<LocationFineDustBloc>().add(
                          LocationFineDustEvent.bookmark(
                              locationFineDust.locationCode));
                    }
                  },
                ),
              ],
              itemBuilder: <LocationFineDust>(context, locationFineDust) {
                return LocationFineDustCard(
                  locationFineDust: locationFineDust,
                  isBookmark: isBookmark(locationFineDust),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  bool isBookmark(LocationFineDust locationFineDust) {
    return state.bookmarkLocationList
        .contains(locationFineDust.locationCode.code);
  }

  void goToDetailScreen(BuildContext context, LocationCode locationCode) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return AirQualityDetailScreen(locationCode: locationCode);
        },
      ),
    );
  }
}
