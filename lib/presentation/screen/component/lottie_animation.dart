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
        Lottie.network(
            Urls.LOTTIE_CLOUD,
            width: 150,
            height: 150),
      ],
    );
  }
}
