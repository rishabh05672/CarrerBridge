import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'editjobs_widget.dart' show EditjobsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditjobsModel extends FlutterFlowModel<EditjobsWidget> {
  ///  Local state fields for this page.

  List<String> skill = [];
  void addToSkill(String item) => skill.add(item);
  void removeFromSkill(String item) => skill.remove(item);
  void removeAtIndexFromSkill(int index) => skill.removeAt(index);
  void insertAtIndexInSkill(int index, String item) =>
      skill.insert(index, item);
  void updateSkillAtIndex(int index, Function(String) updateFn) =>
      skill[index] = updateFn(skill[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Role widget.
  FocusNode? roleFocusNode;
  TextEditingController? roleTextController;
  String? Function(BuildContext, String?)? roleTextControllerValidator;
  // State field(s) for Experience widget.
  FocusNode? experienceFocusNode;
  TextEditingController? experienceTextController;
  String? Function(BuildContext, String?)? experienceTextControllerValidator;
  // State field(s) for Skills widget.
  FocusNode? skillsFocusNode;
  TextEditingController? skillsTextController;
  String? Function(BuildContext, String?)? skillsTextControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in Skills widget.
  JobsRecord? skillsName;
  // State field(s) for Salary widget.
  FocusNode? salaryFocusNode;
  TextEditingController? salaryTextController;
  String? Function(BuildContext, String?)? salaryTextControllerValidator;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for JobType widget.
  FocusNode? jobTypeFocusNode;
  TextEditingController? jobTypeTextController;
  String? Function(BuildContext, String?)? jobTypeTextControllerValidator;
  // State field(s) for JobDescription widget.
  FocusNode? jobDescriptionFocusNode;
  TextEditingController? jobDescriptionTextController;
  String? Function(BuildContext, String?)?
      jobDescriptionTextControllerValidator;
  // State field(s) for CompanyName widget.
  FocusNode? companyNameFocusNode;
  TextEditingController? companyNameTextController;
  String? Function(BuildContext, String?)? companyNameTextControllerValidator;
  // State field(s) for CompanyURL widget.
  FocusNode? companyURLFocusNode;
  TextEditingController? companyURLTextController;
  String? Function(BuildContext, String?)? companyURLTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    roleFocusNode?.dispose();
    roleTextController?.dispose();

    experienceFocusNode?.dispose();
    experienceTextController?.dispose();

    skillsFocusNode?.dispose();
    skillsTextController?.dispose();

    salaryFocusNode?.dispose();
    salaryTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    jobTypeFocusNode?.dispose();
    jobTypeTextController?.dispose();

    jobDescriptionFocusNode?.dispose();
    jobDescriptionTextController?.dispose();

    companyNameFocusNode?.dispose();
    companyNameTextController?.dispose();

    companyURLFocusNode?.dispose();
    companyURLTextController?.dispose();
  }
}
