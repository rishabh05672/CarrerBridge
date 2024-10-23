import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApplicantCollectionRecord extends FirestoreRecord {
  ApplicantCollectionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "applicant_id" field.
  DocumentReference? _applicantId;
  DocumentReference? get applicantId => _applicantId;
  bool hasApplicantId() => _applicantId != null;

  // "job_id" field.
  DocumentReference? _jobId;
  DocumentReference? get jobId => _jobId;
  bool hasJobId() => _jobId != null;

  // "recruiter_id" field.
  DocumentReference? _recruiterId;
  DocumentReference? get recruiterId => _recruiterId;
  bool hasRecruiterId() => _recruiterId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _applicantId = snapshotData['applicant_id'] as DocumentReference?;
    _jobId = snapshotData['job_id'] as DocumentReference?;
    _recruiterId = snapshotData['recruiter_id'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ApplicantCollection');

  static Stream<ApplicantCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApplicantCollectionRecord.fromSnapshot(s));

  static Future<ApplicantCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ApplicantCollectionRecord.fromSnapshot(s));

  static ApplicantCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApplicantCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApplicantCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApplicantCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApplicantCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApplicantCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApplicantCollectionRecordData({
  DocumentReference? applicantId,
  DocumentReference? jobId,
  DocumentReference? recruiterId,
  String? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'applicant_id': applicantId,
      'job_id': jobId,
      'recruiter_id': recruiterId,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApplicantCollectionRecordDocumentEquality
    implements Equality<ApplicantCollectionRecord> {
  const ApplicantCollectionRecordDocumentEquality();

  @override
  bool equals(ApplicantCollectionRecord? e1, ApplicantCollectionRecord? e2) {
    return e1?.applicantId == e2?.applicantId &&
        e1?.jobId == e2?.jobId &&
        e1?.recruiterId == e2?.recruiterId &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ApplicantCollectionRecord? e) => const ListEquality().hash(
      [e?.applicantId, e?.jobId, e?.recruiterId, e?.status, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is ApplicantCollectionRecord;
}
