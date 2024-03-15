import 'dart:core';

class DustInfo {

  // level
  final DustLevel dustLevel;

  DustInfo({
    required this.dustLevel,
  });
}

class DustLevel {
  final int level;
  final String levelName;

  DustLevel({
    required int this.level,
    required String this.levelName,
  });
}
