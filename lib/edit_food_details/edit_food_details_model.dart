import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_food_details_widget.dart' show EditFoodDetailsWidget;
import 'package:flutter/material.dart';

class EditFoodDetailsModel extends FlutterFlowModel<EditFoodDetailsWidget> {
  ///  Local state fields for this page.

  bool editingMode = false;

  DateTime? selectedDateEdit;

  ///  State fields for stateful widgets in this page.

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
