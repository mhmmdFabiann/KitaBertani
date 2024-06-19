import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QaRecord extends FirestoreRecord {
  QaRecord._(
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
      FirebaseFirestore.instance.collection('QA');

  static Stream<QaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QaRecord.fromSnapshot(s));

  static Future<QaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QaRecord.fromSnapshot(s));

  static QaRecord fromSnapshot(DocumentSnapshot snapshot) => QaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQaRecordData({
  DocumentReference? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class QaRecordDocumentEquality implements Equality<QaRecord> {
  const QaRecordDocumentEquality();

  @override
  bool equals(QaRecord? e1, QaRecord? e2) {
    return e1?.userID == e2?.userID;
  }

  @override
  int hash(QaRecord? e) => const ListEquality().hash([e?.userID]);

  @override
  bool isValidKey(Object? o) => o is QaRecord;
}
