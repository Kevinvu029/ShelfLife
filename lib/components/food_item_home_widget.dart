import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'food_item_home_model.dart';
export 'food_item_home_model.dart';

/// Create a horizontal rectangular card representing a single food item.
///
/// On the far left, place a food icon (e.g., fruit or generic food symbol).
/// Next to the icon, show the food item name in bold, with the expiration
/// date below it in smaller text. On the far right, add an edit button
/// (pencil icon) for editing the item. The card should have rounded corners,
/// subtle shadow, and clean spacing, and it should be mobile-friendly and
/// visually distinct from the background.
class FoodItemHomeWidget extends StatefulWidget {
  const FoodItemHomeWidget({
    super.key,
    required this.foodDoc,
  });

  final FoodsRecord? foodDoc;

  @override
  State<FoodItemHomeWidget> createState() => _FoodItemHomeWidgetState();
}

class _FoodItemHomeWidgetState extends State<FoodItemHomeWidget> {
  late FoodItemHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodItemHomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 8.0,
            color: Color(0x1A000000),
            offset: Offset(
              0.0,
              2.0,
            ),
            spreadRadius: 0.0,
          )
        ],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 52.0,
              height: 52.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
                borderRadius: BorderRadius.circular(14.0),
              ),
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Icon(
                Icons.fastfood_rounded,
                color: FlutterFlowTheme.of(context).tertiary,
                size: 28.0,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.foodDoc?.itemName,
                      '[item name]',
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          font: GoogleFonts.darumadropOne(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: FlutterFlowTheme.of(context).secondary,
                        size: 12.0,
                      ),
                      Text(
                        'Expires: ',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: GoogleFonts.darumadropOne(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondary,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          dateTimeFormat("yMd", widget.foodDoc?.expDate),
                          '[date]',
                        ),
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: GoogleFonts.darumadropOne(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondary,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                      ),
                    ].divide(SizedBox(width: 4.0)),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 10.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).alternate,
              icon: Icon(
                Icons.delete_forever,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 20.0,
              ),
              onPressed: () async {
                logFirebaseEvent('FOOD_ITEM_HOME_delete_forever_ICN_ON_TAP');
                logFirebaseEvent('IconButton_backend_call');
                await widget.foodDoc!.reference.delete();
              },
            ),
          ].divide(SizedBox(width: 12.0)),
        ),
      ),
    );
  }
}
