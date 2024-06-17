import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PembeliRecord extends FirestoreRecord {
  PembeliRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pembeli');

  static Stream<PembeliRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PembeliRecord.fromSnapshot(s));

  static Future<PembeliRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PembeliRecord.fromSnapshot(s));

  static PembeliRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PembeliRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PembeliRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PembeliRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PembeliRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PembeliRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPembeliRecordData({
  DocumentReference? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class PembeliRecordDocumentEquality implements Equality<PembeliRecord> {
  const PembeliRecordDocumentEquality();

  @override
  bool equals(PembeliRecord? e1, PembeliRecord? e2) {
    return e1?.userID == e2?.userID;
  }

  @override
  int hash(PembeliRecord? e) => const ListEquality().hash([e?.userID]);

  @override
  bool isValidKey(Object? o) => o is PembeliRecord;
}
