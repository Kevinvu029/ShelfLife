import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Users1Record extends FirestoreRecord {
  Users1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "birthday" field.
  DateTime? _birthday;
  DateTime? get birthday => _birthday;
  bool hasBirthday() => _birthday != null;

  // "newUser" field.
  bool? _newUser;
  bool get newUser => _newUser ?? false;
  bool hasNewUser() => _newUser != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _birthday = snapshotData['birthday'] as DateTime?;
    _newUser = snapshotData['newUser'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users1');

  static Stream<Users1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Users1Record.fromSnapshot(s));

  static Future<Users1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Users1Record.fromSnapshot(s));

  static Users1Record fromSnapshot(DocumentSnapshot snapshot) => Users1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Users1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Users1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Users1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Users1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsers1RecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? birthday,
  bool? newUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'birthday': birthday,
      'newUser': newUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class Users1RecordDocumentEquality implements Equality<Users1Record> {
  const Users1RecordDocumentEquality();

  @override
  bool equals(Users1Record? e1, Users1Record? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.birthday == e2?.birthday &&
        e1?.newUser == e2?.newUser;
  }

  @override
  int hash(Users1Record? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.birthday,
        e?.newUser
      ]);

  @override
  bool isValidKey(Object? o) => o is Users1Record;
}
