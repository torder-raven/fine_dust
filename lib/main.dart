import 'package:fine_dust/data/remote/repository/fine_dust_repository_impl.dart';
import 'package:fine_dust/domain/repository/fine_dust_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'data/remote/datasource/dust_info_api.dart';
import 'presentation/constant/theme.dart';
import 'presentation/screen/location_fine_dust/view/location_fine_dust_list_screen.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  final FineDustRepository repository =
      FineDustRepositoryImpl(api: DustInfoApi());

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<FineDustRepository>(create: (context) => repository),
      ],
      child: MaterialApp(
        home: const LocationFineDustListScreen(),
        theme: findDustTheme,
      ),
    ),
  );
}
