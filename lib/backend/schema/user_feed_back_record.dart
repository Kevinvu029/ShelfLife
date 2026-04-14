import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserFeedBackRecord extends FirestoreRecord {
  UserFeedBackRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "survey_submitted" field.
  bool? _surveySubmitted;
  bool get surveySubmitted => _surveySubmitted ?? false;
  bool hasSurveySubmitted() => _surveySubmitted != null;

  // "Feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  // "Reccomendation" field.
  String? _reccomendation;
  String get reccomendation => _reccomendation ?? '';
  bool hasReccomendation() => _reccomendation != null;

  // "rating_selected" field.
  int? _ratingSelected;
  int get ratingSelected => _ratingSelected ?? 0;
  bool hasRatingSelected() => _ratingSelected != null;

  void _initializeFields() {
    _surveySubmitted = snapshotData['survey_submitted'] as bool?;
    _feedback = snapshotData['Feedback'] as String?;
    _reccomendation = snapshotData['Reccomendation'] as String?;
    _ratingSelected = castToType<int>(snapshotData['rating_selected']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserFeedBack');

  static Stream<UserFeedBackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserFeedBackRecord.fromSnapshot(s));

  static Future<UserFeedBackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserFeedBackRecord.fromSnapshot(s));

  static UserFeedBackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserFeedBackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserFeedBackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserFeedBackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserFeedBackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserFeedBackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserFeedBackRecordData({
  bool? surveySubmitted,
  String? feedback,
  String? reccomendation,
  int? ratingSelected,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'survey_submitted': surveySubmitted,
      'Feedback': feedback,
      'Reccomendation': reccomendation,
      'rating_selected': ratingSelected,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserFeedBackRecordDocumentEquality
    implements Equality<UserFeedBackRecord> {
  const UserFeedBackRecordDocumentEquality();

  @override
  bool equals(UserFeedBackRecord? e1, UserFeedBackRecord? e2) {
    return e1?.surveySubmitted == e2?.surveySubmitted &&
        e1?.feedback == e2?.feedback &&
        e1?.reccomendation == e2?.reccomendation &&
        e1?.ratingSelected == e2?.ratingSelected;
  }

  @override
  int hash(UserFeedBackRecord? e) => const ListEquality().hash(
      [e?.surveySubmitted, e?.feedback, e?.reccomendation, e?.ratingSelected]);

  @override
  bool isValidKey(Object? o) => o is UserFeedBackRecord;
}
