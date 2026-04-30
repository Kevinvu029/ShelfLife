import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'new_generated_recipe_model.dart';
export 'new_generated_recipe_model.dart';

/// Create a rectangular recipe component.
///
/// It should have an image on the left half of the component with the name of
/// it to the right of the image.
class NewGeneratedRecipeWidget extends StatefulWidget {
  const NewGeneratedRecipeWidget({
    super.key,
    String? recipeName,
    String? imageURL,
    this.difficulty,
    this.instructions,
    this.idMeal,
    String? reason,
  })  : this.recipeName = recipeName ?? ' ',
        this.imageURL = imageURL ?? ' ',
        this.reason = reason ?? ' ';

  final String recipeName;
  final String imageURL;
  final String? difficulty;
  final String? instructions;
  final String? idMeal;
  final String reason;

  @override
  State<NewGeneratedRecipeWidget> createState() =>
      _NewGeneratedRecipeWidgetState();
}

class _NewGeneratedRecipeWidgetState extends State<NewGeneratedRecipeWidget> {
  late NewGeneratedRecipeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewGeneratedRecipeModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18.0),
              child: Image.network(
                widget.imageURL,
                width: 140.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.recipeName,
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.darumadropOne(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                    ),
                  ].divide(SizedBox(height: 6.0)),
                ),
              ),
            ),
          ].divide(SizedBox(width: 0.0)),
        ),
      ),
    );
  }
}
