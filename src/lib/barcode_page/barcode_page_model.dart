import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/custom_survey_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'barcode_page_widget.dart' show BarcodePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class BarcodePageModel extends FlutterFlowModel<BarcodePageWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDate;

  String? productNameFromAPI = '';

  String productImage =
      'https://media2.giphy.com/media/v1.Y2lkPTZjMDliOTUyaGY2ajU1Z3l2cmV2cWEyY3hlOWFuY2ozMDdrMmpydDcydTByM25pYSZlcD12MV9naWZzX3NlYXJjaCZjdD1n/iixdMr6cSURW/giphy.gif';

  String scanWorkedResponse = 'Nothing has been scanned...';

  bool showSurvery = false;

  ///  State fields for stateful widgets in this page.

  var scanOutput = '';
  // Stores action output result for [Backend Call - API (foodCloudFunction)] action in Button widget.
  ApiCallResponse? foodCloudResult;
  // State field(s) for itemNameField widget.
  FocusNode? itemNameFieldFocusNode;
  TextEditingController? itemNameFieldTextController;
  String? Function(BuildContext, String?)? itemNameFieldTextControllerValidator;
  // State field(s) for priceField widget.
  FocusNode? priceFieldFocusNode;
  TextEditingController? priceFieldTextController;
  String? Function(BuildContext, String?)? priceFieldTextControllerValidator;
  DateTime? datePicked;
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    itemNameFieldFocusNode?.dispose();
    itemNameFieldTextController?.dispose();

    priceFieldFocusNode?.dispose();
    priceFieldTextController?.dispose();

    navBarModel.dispose();
  }
}
