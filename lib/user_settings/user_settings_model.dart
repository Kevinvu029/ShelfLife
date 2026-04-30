import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_settings_widget.dart' show UserSettingsWidget;
import 'package:flutter/material.dart';

class UserSettingsModel extends FlutterFlowModel<UserSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_userPF = false;
  FFUploadedFile uploadedLocalFile_userPF =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_userPF = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
