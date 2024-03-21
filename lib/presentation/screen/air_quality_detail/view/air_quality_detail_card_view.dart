import 'package:flutter/material.dart';

class AirQualityDetailCardView extends StatelessWidget {
  final String title;
  final Widget child;
  final Function()? onTap;

  const AirQualityDetailCardView({
    required this.title,
    required this.child,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0),
      margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        splashColor: Colors.white.withOpacity(.25),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
