import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PanganRecord extends FirestoreRecord {
  PanganRecord._(
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

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "gambar" field.
  String? _gambar;
  String get gambar => _gambar ?? '';
  bool hasGambar() => _gambar != null;

  // "sold" field.
  double? _sold;
  double get sold => _sold ?? 0.0;
  bool hasSold() => _sold != null;

  // "grade" field.
  String? _grade;
  String get grade => _grade ?? '';
  bool hasGrade() => _grade != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "harga_diskon" field.
  double? _hargaDiskon;
  double get hargaDiskon => _hargaDiskon ?? 0.0;
  bool hasHargaDiskon() => _hargaDiskon != null;

  // "kategori" field.
  String? _kategori;
  String get kategori => _kategori ?? '';
  bool hasKategori() => _kategori != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "productID" field.
  String? _productID;
  String get productID => _productID ?? '';
  bool hasProductID() => _productID != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "statusVeriv" field.
  bool? _statusVeriv;
  bool get statusVeriv => _statusVeriv ?? false;
  bool hasStatusVeriv() => _statusVeriv != null;

  // "tokoAsal" field.
  DocumentReference? _tokoAsal;
  DocumentReference? get tokoAsal => _tokoAsal;
  bool hasTokoAsal() => _tokoAsal != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _index = castToType<int>(snapshotData['index']);
    _gambar = snapshotData['gambar'] as String?;
    _sold = castToType<double>(snapshotData['sold']);
    _grade = snapshotData['grade'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _hargaDiskon = castToType<double>(snapshotData['harga_diskon']);
    _kategori = snapshotData['kategori'] as String?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _productID = snapshotData['productID'] as String?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _statusVeriv = snapshotData['statusVeriv'] as bool?;
    _tokoAsal = snapshotData['tokoAsal'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pangan');

  static Stream<PanganRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PanganRecord.fromSnapshot(s));

  static Future<PanganRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PanganRecord.fromSnapshot(s));

  static PanganRecord fromSnapshot(DocumentSnapshot snapshot) => PanganRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PanganRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PanganRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PanganRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PanganRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPanganRecordData({
  String? name,
  String? description,
  double? price,
  int? quantity,
  int? index,
  String? gambar,
  double? sold,
  String? grade,
  double? rating,
  double? hargaDiskon,
  String? kategori,
  DocumentReference? userID,
  String? productID,
  DateTime? createdTime,
  bool? statusVeriv,
  DocumentReference? tokoAsal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'quantity': quantity,
      'index': index,
      'gambar': gambar,
      'sold': sold,
      'grade': grade,
      'rating': rating,
      'harga_diskon': hargaDiskon,
      'kategori': kategori,
      'userID': userID,
      'productID': productID,
      'createdTime': createdTime,
      'statusVeriv': statusVeriv,
      'tokoAsal': tokoAsal,
    }.withoutNulls,
  );

  return firestoreData;
}

class PanganRecordDocumentEquality implements Equality<PanganRecord> {
  const PanganRecordDocumentEquality();

  @override
  bool equals(PanganRecord? e1, PanganRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.quantity == e2?.quantity &&
        e1?.index == e2?.index &&
        e1?.gambar == e2?.gambar &&
        e1?.sold == e2?.sold &&
        e1?.grade == e2?.grade &&
        e1?.rating == e2?.rating &&
        e1?.hargaDiskon == e2?.hargaDiskon &&
        e1?.kategori == e2?.kategori &&
        e1?.userID == e2?.userID &&
        e1?.productID == e2?.productID &&
        e1?.createdTime == e2?.createdTime &&
        e1?.statusVeriv == e2?.statusVeriv &&
        e1?.tokoAsal == e2?.tokoAsal;
  }

  @override
  int hash(PanganRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.quantity,
        e?.index,
        e?.gambar,
        e?.sold,
        e?.grade,
        e?.rating,
        e?.hargaDiskon,
        e?.kategori,
        e?.userID,
        e?.productID,
        e?.createdTime,
        e?.statusVeriv,
        e?.tokoAsal
      ]);

  @override
  bool isValidKey(Object? o) => o is PanganRecord;
}
