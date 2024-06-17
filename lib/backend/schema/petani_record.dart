import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PetaniRecord extends FirestoreRecord {
  PetaniRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "emailPetani" field.
  String? _emailPetani;
  String get emailPetani => _emailPetani ?? '';
  bool hasEmailPetani() => _emailPetani != null;

  // "NamaPetani" field.
  String? _namaPetani;
  String get namaPetani => _namaPetani ?? '';
  bool hasNamaPetani() => _namaPetani != null;

  // "NamaToko" field.
  String? _namaToko;
  String get namaToko => _namaToko ?? '';
  bool hasNamaToko() => _namaToko != null;

  // "AlamatPetani" field.
  String? _alamatPetani;
  String get alamatPetani => _alamatPetani ?? '';
  bool hasAlamatPetani() => _alamatPetani != null;

  // "NomerTelponPetani" field.
  double? _nomerTelponPetani;
  double get nomerTelponPetani => _nomerTelponPetani ?? 0.0;
  bool hasNomerTelponPetani() => _nomerTelponPetani != null;

  // "BioPetani" field.
  String? _bioPetani;
  String get bioPetani => _bioPetani ?? '';
  bool hasBioPetani() => _bioPetani != null;

  // "fotoProfilPetani" field.
  String? _fotoProfilPetani;
  String get fotoProfilPetani => _fotoProfilPetani ?? '';
  bool hasFotoProfilPetani() => _fotoProfilPetani != null;

  // "fotoLahan" field.
  List<String>? _fotoLahan;
  List<String> get fotoLahan => _fotoLahan ?? const [];
  bool hasFotoLahan() => _fotoLahan != null;

  // "pangan" field.
  List<DocumentReference>? _pangan;
  List<DocumentReference> get pangan => _pangan ?? const [];
  bool hasPangan() => _pangan != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  void _initializeFields() {
    _emailPetani = snapshotData['emailPetani'] as String?;
    _namaPetani = snapshotData['NamaPetani'] as String?;
    _namaToko = snapshotData['NamaToko'] as String?;
    _alamatPetani = snapshotData['AlamatPetani'] as String?;
    _nomerTelponPetani = castToType<double>(snapshotData['NomerTelponPetani']);
    _bioPetani = snapshotData['BioPetani'] as String?;
    _fotoProfilPetani = snapshotData['fotoProfilPetani'] as String?;
    _fotoLahan = getDataList(snapshotData['fotoLahan']);
    _pangan = getDataList(snapshotData['pangan']);
    _userID = snapshotData['userID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('petani');

  static Stream<PetaniRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PetaniRecord.fromSnapshot(s));

  static Future<PetaniRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PetaniRecord.fromSnapshot(s));

  static PetaniRecord fromSnapshot(DocumentSnapshot snapshot) => PetaniRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PetaniRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PetaniRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PetaniRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PetaniRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPetaniRecordData({
  String? emailPetani,
  String? namaPetani,
  String? namaToko,
  String? alamatPetani,
  double? nomerTelponPetani,
  String? bioPetani,
  String? fotoProfilPetani,
  DocumentReference? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'emailPetani': emailPetani,
      'NamaPetani': namaPetani,
      'NamaToko': namaToko,
      'AlamatPetani': alamatPetani,
      'NomerTelponPetani': nomerTelponPetani,
      'BioPetani': bioPetani,
      'fotoProfilPetani': fotoProfilPetani,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class PetaniRecordDocumentEquality implements Equality<PetaniRecord> {
  const PetaniRecordDocumentEquality();

  @override
  bool equals(PetaniRecord? e1, PetaniRecord? e2) {
    const listEquality = ListEquality();
    return e1?.emailPetani == e2?.emailPetani &&
        e1?.namaPetani == e2?.namaPetani &&
        e1?.namaToko == e2?.namaToko &&
        e1?.alamatPetani == e2?.alamatPetani &&
        e1?.nomerTelponPetani == e2?.nomerTelponPetani &&
        e1?.bioPetani == e2?.bioPetani &&
        e1?.fotoProfilPetani == e2?.fotoProfilPetani &&
        listEquality.equals(e1?.fotoLahan, e2?.fotoLahan) &&
        listEquality.equals(e1?.pangan, e2?.pangan) &&
        e1?.userID == e2?.userID;
  }

  @override
  int hash(PetaniRecord? e) => const ListEquality().hash([
        e?.emailPetani,
        e?.namaPetani,
        e?.namaToko,
        e?.alamatPetani,
        e?.nomerTelponPetani,
        e?.bioPetani,
        e?.fotoProfilPetani,
        e?.fotoLahan,
        e?.pangan,
        e?.userID
      ]);

  @override
  bool isValidKey(Object? o) => o is PetaniRecord;
}
