import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'custom_survey_widget.dart' show CustomSurveyWidget;
import 'package:flutter/material.dart';

class CustomSurveyModel extends FlutterFlowModel<CustomSurveyWidget> {
  ///  Local state fields for this component.

  bool submitted = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
