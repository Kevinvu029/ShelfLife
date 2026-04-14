import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodsRecord extends FirestoreRecord {
  FoodsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "expDate" field.
  DateTime? _expDate;
  DateTime? get expDate => _expDate;
  bool hasExpDate() => _expDate != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _itemName = snapshotData['itemName'] as String?;
    _expDate = snapshotData['expDate'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _price = castToType<double>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foods');

  static Stream<FoodsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodsRecord.fromSnapshot(s));

  static Future<FoodsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodsRecord.fromSnapshot(s));

  static FoodsRecord fromSnapshot(DocumentSnapshot snapshot) => FoodsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodsRecordData({
  String? itemName,
  DateTime? expDate,
  DocumentReference? user,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'itemName': itemName,
      'expDate': expDate,
      'user': user,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodsRecordDocumentEquality implements Equality<FoodsRecord> {
  const FoodsRecordDocumentEquality();

  @override
  bool equals(FoodsRecord? e1, FoodsRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.expDate == e2?.expDate &&
        e1?.user == e2?.user &&
        e1?.price == e2?.price;
  }

  @override
  int hash(FoodsRecord? e) =>
      const ListEquality().hash([e?.itemName, e?.expDate, e?.user, e?.price]);

  @override
  bool isValidKey(Object? o) => o is FoodsRecord;
}
