import '/components/list_food_widget.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'food_list_widget.dart' show FoodListWidget;
import 'package:flutter/material.dart';

class FoodListModel extends FlutterFlowModel<FoodListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for listFood component.
  late ListFoodModel listFoodModel;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    listFoodModel = createModel(context, () => ListFoodModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    listFoodModel.dispose();
    navBarModel.dispose();
  }
}
