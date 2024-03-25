import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fine_dust/data/remote/entity/mapper/firestore_data_mapper.dart';
import 'package:firebase_app_installations/firebase_app_installations.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../../domain/entity/location_code.dart';
import '../../../firebase_options.dart';

class BookmarkFirestore {
  final String LocationCodeKey = "locationCode";
  final String bookmarkDateKey = "bookmarkDate";
  final String noneCollectionKey = "none";
  late String _collectionId;
  late FirebaseFirestore _firestore;

  BookmarkFirestore() {
    init();
  }

  init() async {
    _collectionId = await FirebaseInstallations.instance.getId();
    _firestore = FirebaseFirestore.instance;
  }

  bookmarkLocation({required LocationCode location}) async {
    _firestore.collection(_collectionId).doc(location.name).set(
      {
        "${bookmarkDateKey}": "${DateTime.now().millisecondsSinceEpoch}",
        "${LocationCodeKey}": "${location.code}",
      },
    );
  }

  deleteBookmark({required LocationCode locationCode}) async {
    _firestore.collection(_collectionId).doc(locationCode.name).delete();
  }

  Stream<List<int>> getBookmarkList() async* {
    yield* _firestore
        .collection(_collectionId)
        .orderBy(bookmarkDateKey, descending: false)
        .snapshots()
        .map(
          (event) => event.docs.toLocalCodeList(),
        );
  }

  Future<bool> getIsBookmarked({required LocationCode locationCode}) async {
    return _firestore
        .collection(_collectionId)
        .doc(locationCode.name)
        .get()
        .then((value) => value.data()?.values != null);
  }
}
