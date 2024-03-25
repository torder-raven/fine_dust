import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

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
    return Container(
      decoration: BoxDecoration(
        color: ColorResource.ITEM_BACKGROUND_COLOR,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        splashColor: Colors.white.withOpacity(.25),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
