import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/contact_support_widget.dart';
import '/components/omni_man_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'user_settings_widget.dart' show UserSettingsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class UserSettingsModel extends FlutterFlowModel<UserSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_userPF = false;
  FFUploadedFile uploadedLocalFile_userPF =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_userPF = '';

  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
