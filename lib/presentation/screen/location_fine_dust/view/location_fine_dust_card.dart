import 'package:fine_dust/domain/entity/dust_info.dart';
import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/presentation/constant/colors.dart';
import 'package:fine_dust/presentation/constant/strings.dart';
import 'package:fine_dust/presentation/extension.dart';
import 'package:flutter/material.dart';

class LocationFineDustCard extends StatelessWidget {
  final LocationFineDust locationFineDust;
  final bool isBookmark;

  const LocationFineDustCard({
    super.key,
    required this.locationFineDust,
    required this.isBookmark,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorResource.ITEM_BACKGROUND_COLOR,
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _LeftInfo(
            isBookmark: isBookmark,
            location: locationFineDust.locationCode.locationName,
            dateTime: locationFineDust.fineDust.dateTime,
          ),
          _RightInfo(
            fineDust: locationFineDust.fineDust,
            ultraFineDust: locationFineDust.ultraFineDust,
            ozone: locationFineDust.ozone,
          ),
        ],
      ),
    );
  }
}

class _LeftInfo extends StatelessWidget {
  final bool isBookmark;
  final String location;
  final DateTime dateTime;

  const _LeftInfo({
    super.key,
    required this.isBookmark,
    required this.location,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              location,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w800),
            ),
            if (isBookmark)
              const Padding(
                padding: EdgeInsets.only(left: 4.0),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              )
          ],
        ),
        Text(
          dateTime.toTimeString(),
          style: Theme.of(context)
              .textTheme
              .labelMedium
              ?.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}

class _RightInfo extends StatelessWidget {
  final DustInfo fineDust;
  final DustInfo ultraFineDust;
  final DustInfo ozone;

  const _RightInfo({
    super.key,
    required this.fineDust,
    required this.ultraFineDust,
    required this.ozone,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        dustInfoView(
          context: context,
          title: Strings.FINE_DUST,
          dustInfo: fineDust,
          unit: Strings.MICRO_PER_CUBIC_METER_UNIT,
        ),
        dustInfoView(
          context: context,
          title: Strings.ULTRA_FINE_DUST,
          dustInfo: ultraFineDust,
          unit: Strings.MICRO_PER_CUBIC_METER_UNIT,
        ),
        dustInfoView(
          context: context,
          title: Strings.OZONE,
          dustInfo: ozone,
          unit: Strings.PARTS_PER_MILLION_UNIT,
        ),
      ],
    );
  }

  Widget dustInfoView({
    required BuildContext context,
    required String title,
    required DustInfo dustInfo,
    required String unit,
  }) {
    return Row(
      children: [
        SizedBox(
          width: 70.0,
          child: Text(
            title,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
            textAlign: TextAlign.end,
          ),
        ),
        const SizedBox(width: 8.0),
        Text(dustInfo.toStateAndUnit(unit),
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: Colors.white,
                )),
      ],
    );
  }
}
