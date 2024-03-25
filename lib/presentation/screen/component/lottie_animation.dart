import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

import '../../constant/urls.dart';

class MovingCloudAnimation extends StatelessWidget {
  const MovingCloudAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(Urls.LOTTIE_CLOUD, width: 150, height: 150),
      ],
    );
  }
}

class WalkingMenAnimation extends StatelessWidget {
  const WalkingMenAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset(Urls.LOTTIE_WALKING_MEN,
            width: MediaQuery.of(context).size.width - 60,
            height: MediaQuery.of(context).size.height / 3)
      ],
    );
  }
}
