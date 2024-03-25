import 'package:flutter/material.dart';

import 'colors.dart';

final findDustTheme = ThemeData(
  primaryColor: ColorResource.PRIMARY_COLOR,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    color: ColorResource.PRIMARY_COLOR,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.w800,
      color: Colors.white,
    ),
  ),
);
