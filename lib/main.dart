import 'package:fine_dust/presentation/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
