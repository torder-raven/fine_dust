import 'package:flutter/material.dart';

import 'colors.dart';

final findDustTheme = ThemeData(
  primaryColor: ColorResource.PRIMARY_COLOR,
  appBarTheme: AppBarTheme(
      color: ColorResource.PRIMARY_COLOR,
      iconTheme: const IconThemeData(color: Colors.white),
      titleTextStyle: const TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.w800,
        color: Colors.white,
      )),
);
