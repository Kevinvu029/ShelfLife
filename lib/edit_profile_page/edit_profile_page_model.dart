import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_profile_page_widget.dart' show EditProfilePageWidget;
import 'package:flutter/material.dart';

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
