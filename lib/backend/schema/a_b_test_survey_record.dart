import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ABTestSurveyRecord extends FirestoreRecord {
  ABTestSurveyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "barcodeAccurate" field.
  bool? _barcodeAccurate;
  bool get barcodeAccurate => _barcodeAccurate ?? false;
  bool hasBarcodeAccurate() => _barcodeAccurate != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "SurveySubmitted" field.
  bool? _surveySubmitted;
  bool get surveySubmitted => _surveySubmitted ?? false;
  bool hasSurveySubmitted() => _surveySubmitted != null;

  void _initializeFields() {
    _barcodeAccurate = snapshotData['barcodeAccurate'] as bool?;
    _rating = castToType<int>(snapshotData['rating']);
    _surveySubmitted = snapshotData['SurveySubmitted'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ABTest_Survey');

  static Stream<ABTestSurveyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ABTestSurveyRecord.fromSnapshot(s));

  static Future<ABTestSurveyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ABTestSurveyRecord.fromSnapshot(s));

  static ABTestSurveyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ABTestSurveyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ABTestSurveyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ABTestSurveyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ABTestSurveyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ABTestSurveyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createABTestSurveyRecordData({
  bool? barcodeAccurate,
  int? rating,
  bool? surveySubmitted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'barcodeAccurate': barcodeAccurate,
      'rating': rating,
      'SurveySubmitted': surveySubmitted,
    }.withoutNulls,
  );

  return firestoreData;
}

class ABTestSurveyRecordDocumentEquality
    implements Equality<ABTestSurveyRecord> {
  const ABTestSurveyRecordDocumentEquality();

  @override
  bool equals(ABTestSurveyRecord? e1, ABTestSurveyRecord? e2) {
    return e1?.barcodeAccurate == e2?.barcodeAccurate &&
        e1?.rating == e2?.rating &&
        e1?.surveySubmitted == e2?.surveySubmitted;
  }

  @override
  int hash(ABTestSurveyRecord? e) => const ListEquality()
      .hash([e?.barcodeAccurate, e?.rating, e?.surveySubmitted]);

  @override
  bool isValidKey(Object? o) => o is ABTestSurveyRecord;
}
