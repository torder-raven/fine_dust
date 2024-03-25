import 'package:fine_dust/data/remote/repository/bookmark_repository_impl.dart';
import 'package:fine_dust/data/remote/repository/fine_dust_repository_impl.dart';
import 'package:fine_dust/domain/repository/fine_dust_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'data/remote/datasource/bookmark_firestore.dart';
import 'data/remote/datasource/dust_info_api.dart';
import 'domain/repository/bookmark_repository.dart';
import 'firebase_options.dart';
import 'presentation/constant/theme.dart';
import 'presentation/screen/location_fine_dust/view/location_fine_dust_list_screen.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  final FineDustRepository repository =
      FineDustRepositoryImpl(api: DustInfoApi());

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final bookmarkFireStore = BookmarkFirestore();
  await bookmarkFireStore.init();

  final BookmarkRepository bookmarkRepository = BookmarkRepositoryImpl(firestore: bookmarkFireStore);

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<FineDustRepository>(create: (context) => repository),
        RepositoryProvider<BookmarkRepository>(create: (context) => bookmarkRepository),
      ],
      child: MaterialApp(
        home: const LocationFineDustListScreen(),
        theme: findDustTheme,
      ),
    ),
  );
}
