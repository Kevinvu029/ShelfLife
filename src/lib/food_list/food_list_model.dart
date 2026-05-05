import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/food_item_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'food_list_widget.dart' show FoodListWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodListModel extends FlutterFlowModel<FoodListWidget> {
  ///  State fields for stateful widgets in this page.

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
