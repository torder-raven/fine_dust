import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fine_dust/data/int_extension.dart';
import 'package:firebase_app_installations/firebase_app_installations.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../../domain/entity/location_code.dart';
import '../../../firebase_options.dart';

class BookmarkFirestore {
  final String LocationCodeKey = "locationCode";
  final String noneCollectionKey = "none";
  late String _docId;
  late FirebaseFirestore _firestore;

  init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    _docId = await FirebaseInstallations.instance.getId();
    _firestore = FirebaseFirestore.instance;
  }

  bookmarkLocation({required LocationCode location}) async {
    _firestore.collection(_docId).doc(location.name).set(
      {
        "${LocationCodeKey}": "${location.code}",
      },
    );
  }

  deleteBookmark({required LocationCode locationCode}) async {
    _firestore.collection(_docId).doc(locationCode.name).delete();
  }

  Stream<List<int>> getBookmarkList() async* {
    yield* _firestore.collection(_docId).snapshots().map((event) => event.docs
        .map((e) => e.data().values.first.toString().parseToInt())
        .toList());
  }

  Future<bool> getIsBookmarked({required LocationCode locationCode}) async {
    return _firestore
        .collection(_docId)
        .doc(locationCode.name)
        .get()
        .then((value) => value.data()?.values != null);
  }
}
