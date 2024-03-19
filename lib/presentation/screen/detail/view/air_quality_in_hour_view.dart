import 'package:flutter/material.dart';

class AirQualityInHourView extends StatelessWidget {
  final String hour;
  final String status;

  const AirQualityInHourView({
    required this.hour,
    required this.status,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            hour,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            status,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}