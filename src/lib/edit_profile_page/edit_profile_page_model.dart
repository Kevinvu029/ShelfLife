import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'edit_profile_page_widget.dart' show EditProfilePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfilePageModel extends FlutterFlowModel<EditProfilePageWidget> {
  ///  Local state fields for this page.

  bool editProfile = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChangName widget.
  FocusNode? changNameFocusNode;
  TextEditingController? changNameTextController;
  String? Function(BuildContext, String?)? changNameTextControllerValidator;
  // State field(s) for editEmail widget.
  FocusNode? editEmailFocusNode;
  TextEditingController? editEmailTextController;
  String? Function(BuildContext, String?)? editEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    changNameFocusNode?.dispose();
    changNameTextController?.dispose();

    editEmailFocusNode?.dispose();
    editEmailTextController?.dispose();
  }
}
