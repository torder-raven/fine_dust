
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fine_dust/data/int_extension.dart';

extension FireStoreDataMapper
on List<QueryDocumentSnapshot<Map<String, dynamic>>> {
  List<int> toLocalCodeList() {
    return this
        .map((e) => e.data().values.last.toString().parseToInt())
        .toList();
  }
}
