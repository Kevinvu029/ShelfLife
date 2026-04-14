import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_survey_model.dart';
export 'custom_survey_model.dart';

class CustomSurveyWidget extends StatefulWidget {
  const CustomSurveyWidget({
    super.key,
    required this.isDone,
  });

  final bool? isDone;

  @override
  State<CustomSurveyWidget> createState() => _CustomSurveyWidgetState();
}

class _CustomSurveyWidgetState extends State<CustomSurveyWidget> {
  late CustomSurveyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomSurveyModel());

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
      width: 400.0,
      height: 400.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        shape: BoxShape.rectangle,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'In App Survery ',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.darumadropOne(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 30.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          Text(
            'Was the barcode scanner working properly?',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.darumadropOne(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          FlutterFlowRadioButton(
            options: ['YES', 'NO'].toList(),
            onChanged: (val) => safeSetState(() {}),
            controller: _model.radioButtonValueController ??=
                FormFieldController<String>(null),
            optionHeight: 32.0,
            optionSpacing: 40.0,
            textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  font: GoogleFonts.darumadropOne(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
            selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.darumadropOne(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
            buttonPosition: RadioButtonPosition.left,
            direction: Axis.horizontal,
            radioButtonColor: FlutterFlowTheme.of(context).primary,
            inactiveRadioButtonColor:
                FlutterFlowTheme.of(context).secondaryText,
            toggleable: false,
            horizontalAlignment: WrapAlignment.start,
            verticalAlignment: WrapCrossAlignment.start,
          ),
          Text(
            'How accurate was this feature?',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.darumadropOne(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
          RatingBar.builder(
            onRatingUpdate: (newValue) =>
                safeSetState(() => _model.ratingBarValue = newValue),
            itemBuilder: (context, index) => Icon(
              Icons.star_rounded,
              color: FlutterFlowTheme.of(context).primary,
            ),
            direction: Axis.horizontal,
            initialRating: _model.ratingBarValue ??= 0.0,
            unratedColor: FlutterFlowTheme.of(context).accent1,
            itemCount: 5,
            itemSize: 24.0,
            glowColor: FlutterFlowTheme.of(context).primary,
          ),
          FFButtonWidget(
            onPressed: () async {
              logFirebaseEvent('CUSTOM_SURVEY_COMP_SUBMIT_BTN_ON_TAP');
              logFirebaseEvent('Button_backend_call');

              await ABTestSurveyRecord.collection
                  .doc()
                  .set(createABTestSurveyRecordData(
                    barcodeAccurate:
                        _model.radioButtonValue == 'YES' ? true : false,
                    rating: _model.ratingBarValue?.round(),
                  ));
              logFirebaseEvent('Button_close_dialog_drawer_etc');
              Navigator.pop(context);
            },
            text: 'Submit',
            options: FFButtonOptions(
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    font: GoogleFonts.darumadropOne(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).titleSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ].divide(SizedBox(height: 20.0)),
      ),
    );
  }
}
