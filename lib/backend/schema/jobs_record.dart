import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobsRecord extends FirestoreRecord {
  JobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Experience" field.
  String? _experience;
  String get experience => _experience ?? '';
  bool hasExperience() => _experience != null;

  // "JobType" field.
  String? _jobType;
  String get jobType => _jobType ?? '';
  bool hasJobType() => _jobType != null;

  // "Salary" field.
  String? _salary;
  String get salary => _salary ?? '';
  bool hasSalary() => _salary != null;

  // "JobTitle" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  bool hasJobTitle() => _jobTitle != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "jobdescription" field.
  String? _jobdescription;
  String get jobdescription => _jobdescription ?? '';
  bool hasJobdescription() => _jobdescription != null;

  // "companyname" field.
  String? _companyname;
  String get companyname => _companyname ?? '';
  bool hasCompanyname() => _companyname != null;

  // "companylogo" field.
  String? _companylogo;
  String get companylogo => _companylogo ?? '';
  bool hasCompanylogo() => _companylogo != null;

  // "companyurl" field.
  String? _companyurl;
  String get companyurl => _companyurl ?? '';
  bool hasCompanyurl() => _companyurl != null;

  // "skills" field.
  List<String>? _skills;
  List<String> get skills => _skills ?? const [];
  bool hasSkills() => _skills != null;

  // "recruiter_id" field.
  DocumentReference? _recruiterId;
  DocumentReference? get recruiterId => _recruiterId;
  bool hasRecruiterId() => _recruiterId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _experience = snapshotData['Experience'] as String?;
    _jobType = snapshotData['JobType'] as String?;
    _salary = snapshotData['Salary'] as String?;
    _jobTitle = snapshotData['JobTitle'] as String?;
    _location = snapshotData['location'] as String?;
    _jobdescription = snapshotData['jobdescription'] as String?;
    _companyname = snapshotData['companyname'] as String?;
    _companylogo = snapshotData['companylogo'] as String?;
    _companyurl = snapshotData['companyurl'] as String?;
    _skills = getDataList(snapshotData['skills']);
    _recruiterId = snapshotData['recruiter_id'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobs');

  static Stream<JobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobsRecord.fromSnapshot(s));

  static Future<JobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobsRecord.fromSnapshot(s));

  static JobsRecord fromSnapshot(DocumentSnapshot snapshot) => JobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobsRecordData({
  String? experience,
  String? jobType,
  String? salary,
  String? jobTitle,
  String? location,
  String? jobdescription,
  String? companyname,
  String? companylogo,
  String? companyurl,
  DocumentReference? recruiterId,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Experience': experience,
      'JobType': jobType,
      'Salary': salary,
      'JobTitle': jobTitle,
      'location': location,
      'jobdescription': jobdescription,
      'companyname': companyname,
      'companylogo': companylogo,
      'companyurl': companyurl,
      'recruiter_id': recruiterId,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobsRecordDocumentEquality implements Equality<JobsRecord> {
  const JobsRecordDocumentEquality();

  @override
  bool equals(JobsRecord? e1, JobsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.experience == e2?.experience &&
        e1?.jobType == e2?.jobType &&
        e1?.salary == e2?.salary &&
        e1?.jobTitle == e2?.jobTitle &&
        e1?.location == e2?.location &&
        e1?.jobdescription == e2?.jobdescription &&
        e1?.companyname == e2?.companyname &&
        e1?.companylogo == e2?.companylogo &&
        e1?.companyurl == e2?.companyurl &&
        listEquality.equals(e1?.skills, e2?.skills) &&
        e1?.recruiterId == e2?.recruiterId &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(JobsRecord? e) => const ListEquality().hash([
        e?.experience,
        e?.jobType,
        e?.salary,
        e?.jobTitle,
        e?.location,
        e?.jobdescription,
        e?.companyname,
        e?.companylogo,
        e?.companyurl,
        e?.skills,
        e?.recruiterId,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsRecord;
}
