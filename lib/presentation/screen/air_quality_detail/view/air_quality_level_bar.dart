import 'package:flutter/material.dart';

class AirQualityLevelBar extends StatefulWidget {
  final num levelMaxValue;
  final num rawValue;

  const AirQualityLevelBar({
    required this.levelMaxValue,
    required this.rawValue,
    super.key,
  });

  @override
  State<AirQualityLevelBar> createState() => _AirQualityLevelBarState();
}

class _AirQualityLevelBarState extends State<AirQualityLevelBar> {
  final GlobalKey _globalKey = GlobalKey();
  final List<Color> airQualityLevels = [
    Colors.blue[700]!,
    Colors.green,
    Colors.orange,
    Colors.red,
    Colors.red[900]!
  ];
  double currentLevelPosition = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      double width = _globalKey.currentContext?.size?.width ?? 0.0;
      setState(() {
        currentLevelPosition = ((width / widget.levelMaxValue) *
            (widget.rawValue > widget.levelMaxValue
                    ? widget.levelMaxValue
                    : widget.rawValue)
                .toDouble());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    const levelBarHeight = 14.0;
    const currentLevelViewWidth = levelBarHeight - 2;

    return Stack(
      key: _globalKey,
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: levelBarHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(color: Colors.black, width: 2.0),
            gradient: LinearGradient(
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
              colors: airQualityLevels,
            ),
          ),
        ),
        AnimatedPositioned(
          curve: Curves.ease,
          left: (currentLevelPosition > 0
              ? currentLevelPosition - currentLevelViewWidth
              : 0),
          top: 0,
          bottom: 0,
          duration: Duration(milliseconds: 750),
          child: Container(
            width: currentLevelViewWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0),
              border: Border.all(color: Colors.white, width: 2.0),
            ),
          ),
        ),
      ],
    );
  }
}
