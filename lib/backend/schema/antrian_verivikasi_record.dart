import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AntrianVerivikasiRecord extends FirestoreRecord {
  AntrianVerivikasiRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_antrian" field.
  int? _idAntrian;
  int get idAntrian => _idAntrian ?? 0;
  bool hasIdAntrian() => _idAntrian != null;

  // "produk" field.
  String? _produk;
  String get produk => _produk ?? '';
  bool hasProduk() => _produk != null;

  // "gambarProfil" field.
  String? _gambarProfil;
  String get gambarProfil => _gambarProfil ?? '';
  bool hasGambarProfil() => _gambarProfil != null;

  // "namaToko" field.
  String? _namaToko;
  String get namaToko => _namaToko ?? '';
  bool hasNamaToko() => _namaToko != null;

  // "statsuVerivikasi" field.
  String? _statsuVerivikasi;
  String get statsuVerivikasi => _statsuVerivikasi ?? '';
  bool hasStatsuVerivikasi() => _statsuVerivikasi != null;

  void _initializeFields() {
    _idAntrian = castToType<int>(snapshotData['id_antrian']);
    _produk = snapshotData['produk'] as String?;
    _gambarProfil = snapshotData['gambarProfil'] as String?;
    _namaToko = snapshotData['namaToko'] as String?;
    _statsuVerivikasi = snapshotData['statsuVerivikasi'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('antrian_verivikasi');

  static Stream<AntrianVerivikasiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AntrianVerivikasiRecord.fromSnapshot(s));

  static Future<AntrianVerivikasiRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AntrianVerivikasiRecord.fromSnapshot(s));

  static AntrianVerivikasiRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AntrianVerivikasiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AntrianVerivikasiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AntrianVerivikasiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AntrianVerivikasiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AntrianVerivikasiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAntrianVerivikasiRecordData({
  int? idAntrian,
  String? produk,
  String? gambarProfil,
  String? namaToko,
  String? statsuVerivikasi,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_antrian': idAntrian,
      'produk': produk,
      'gambarProfil': gambarProfil,
      'namaToko': namaToko,
      'statsuVerivikasi': statsuVerivikasi,
    }.withoutNulls,
  );

  return firestoreData;
}

class AntrianVerivikasiRecordDocumentEquality
    implements Equality<AntrianVerivikasiRecord> {
  const AntrianVerivikasiRecordDocumentEquality();

  @override
  bool equals(AntrianVerivikasiRecord? e1, AntrianVerivikasiRecord? e2) {
    return e1?.idAntrian == e2?.idAntrian &&
        e1?.produk == e2?.produk &&
        e1?.gambarProfil == e2?.gambarProfil &&
        e1?.namaToko == e2?.namaToko &&
        e1?.statsuVerivikasi == e2?.statsuVerivikasi;
  }

  @override
  int hash(AntrianVerivikasiRecord? e) => const ListEquality().hash([
        e?.idAntrian,
        e?.produk,
        e?.gambarProfil,
        e?.namaToko,
        e?.statsuVerivikasi
      ]);

  @override
  bool isValidKey(Object? o) => o is AntrianVerivikasiRecord;
}
