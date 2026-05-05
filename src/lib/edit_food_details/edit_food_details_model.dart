import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'edit_food_details_widget.dart' show EditFoodDetailsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class EditFoodDetailsModel extends FlutterFlowModel<EditFoodDetailsWidget> {
  ///  Local state fields for this page.

  bool editingMode = false;

  DateTime? selectedDateEdit;

  ///  State fields for stateful widgets in this page.

  AudioPlayer? soundPlayer;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for editPriceField widget.
  FocusNode? editPriceFieldFocusNode;
  TextEditingController? editPriceFieldTextController;
  String? Function(BuildContext, String?)?
      editPriceFieldTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    editPriceFieldFocusNode?.dispose();
    editPriceFieldTextController?.dispose();
  }
}
