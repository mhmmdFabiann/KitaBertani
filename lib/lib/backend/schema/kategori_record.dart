import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KategoriRecord extends FirestoreRecord {
  KategoriRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "gambarKategori" field.
  String? _gambarKategori;
  String get gambarKategori => _gambarKategori ?? '';
  bool hasGambarKategori() => _gambarKategori != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _gambarKategori = snapshotData['gambarKategori'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('kategori');

  static Stream<KategoriRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => KategoriRecord.fromSnapshot(s));

  static Future<KategoriRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => KategoriRecord.fromSnapshot(s));

  static KategoriRecord fromSnapshot(DocumentSnapshot snapshot) =>
      KategoriRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static KategoriRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      KategoriRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'KategoriRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is KategoriRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createKategoriRecordData({
  String? name,
  String? description,
  String? gambarKategori,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'gambarKategori': gambarKategori,
    }.withoutNulls,
  );

  return firestoreData;
}

class KategoriRecordDocumentEquality implements Equality<KategoriRecord> {
  const KategoriRecordDocumentEquality();

  @override
  bool equals(KategoriRecord? e1, KategoriRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.gambarKategori == e2?.gambarKategori;
  }

  @override
  int hash(KategoriRecord? e) =>
      const ListEquality().hash([e?.name, e?.description, e?.gambarKategori]);

  @override
  bool isValidKey(Object? o) => o is KategoriRecord;
}
