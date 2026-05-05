import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar_widget.dart';
import '/components/new_generated_recipe_widget.dart';
import '/components/popup_food_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'ai_recipe_page_widget.dart' show AiRecipePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
