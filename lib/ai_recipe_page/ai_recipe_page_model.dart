import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ai_recipe_page_widget.dart' show AiRecipePageWidget;
import 'package:flutter/material.dart';

class AiRecipePageModel extends FlutterFlowModel<AiRecipePageWidget> {
  ///  Local state fields for this page.

  dynamic recipeText;

  dynamic recipeData;

  bool buttonPressed = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getRecipeSuggestionVTwo)] action in Button widget.
  ApiCallResponse? recipeAPIOutput;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
  }
}
