import 'package:fine_dust/domain/entity/dust_info.dart';
import 'package:fine_dust/domain/entity/location_fine_dust.dart';
import 'package:fine_dust/presentation/constant/strings.dart';
import 'package:fine_dust/presentation/extension.dart';
import 'package:flutter/material.dart';

class LocationFineDustCard extends StatelessWidget {
  final LocationFineDust locationFineDust;

  const LocationFineDustCard({super.key, required this.locationFineDust});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor,
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _LeftInfo(
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
      ),
    );
  }
}

class _LeftInfo extends StatelessWidget {
  final String location;
  final DateTime dateTime;

  const _LeftInfo({
    super.key,
    required this.location,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          location,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.w800),
        ),
        Text(dateTime.toTimeString(),
            style: Theme.of(context).textTheme.labelMedium),
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
                  fontWeight: FontWeight.w800,
                ),
            textAlign: TextAlign.end,
          ),
        ),
        const SizedBox(width: 8.0),
        Text(
          dustInfo.toStateAndUnit(unit),
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
