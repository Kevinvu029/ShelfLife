import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodWasteRecord extends FirestoreRecord {
  FoodWasteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "expiredAt" field.
  DateTime? _expiredAt;
  DateTime? get expiredAt => _expiredAt;
  bool hasExpiredAt() => _expiredAt != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _itemName = snapshotData['itemName'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _expiredAt = snapshotData['expiredAt'] as DateTime?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('food_waste');

  static Stream<FoodWasteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodWasteRecord.fromSnapshot(s));

  static Future<FoodWasteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodWasteRecord.fromSnapshot(s));

  static FoodWasteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoodWasteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodWasteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodWasteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodWasteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodWasteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodWasteRecordData({
  String? itemName,
  double? price,
  DateTime? expiredAt,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'itemName': itemName,
      'price': price,
      'expiredAt': expiredAt,
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodWasteRecordDocumentEquality implements Equality<FoodWasteRecord> {
  const FoodWasteRecordDocumentEquality();

  @override
  bool equals(FoodWasteRecord? e1, FoodWasteRecord? e2) {
    return e1?.itemName == e2?.itemName &&
        e1?.price == e2?.price &&
        e1?.expiredAt == e2?.expiredAt &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(FoodWasteRecord? e) => const ListEquality()
      .hash([e?.itemName, e?.price, e?.expiredAt, e?.userRef]);

  @override
  bool isValidKey(Object? o) => o is FoodWasteRecord;
}
