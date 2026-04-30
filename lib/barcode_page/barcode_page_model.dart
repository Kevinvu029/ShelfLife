import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'barcode_page_widget.dart' show BarcodePageWidget;
import 'package:flutter/material.dart';

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
