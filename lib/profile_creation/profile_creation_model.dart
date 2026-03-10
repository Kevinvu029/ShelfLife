import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_creation_widget.dart' show ProfileCreationWidget;
import 'package:flutter/material.dart';

class ProfileCreationModel extends FlutterFlowModel<ProfileCreationWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataKrd = false;
  FFUploadedFile uploadedLocalFile_uploadDataKrd =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataKrd = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
