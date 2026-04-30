import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar_widget.dart';
import '/components/new_generated_recipe_widget.dart';
import '/components/popup_food_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ai_recipe_page_model.dart';
export 'ai_recipe_page_model.dart';

/// Create a recipes page.
///
/// At the top middle is should say "recipes". Under that should say "favorite
/// recipes:" indented to the left. Under that it should be a left to right
/// scroll of square favorite recipe widgets. The next section under should
/// have a button in the middle that says "generate recipes". Under that
/// should be an up and down scroll of rectangle recipe widgets. The navbar
/// should be at the bottom as well.
class AiRecipePageWidget extends StatefulWidget {
  const AiRecipePageWidget({super.key});

  static String routeName = 'aiRecipePage';
  static String routePath = '/aiRecipePage';

  @override
  State<AiRecipePageWidget> createState() => _AiRecipePageWidgetState();
}

class _AiRecipePageWidgetState extends State<AiRecipePageWidget> {
  late AiRecipePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AiRecipePageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'aiRecipePage'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Text(
                  'Recipes',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.darumadropOne(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 30.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(32.0, 16.0, 32.0, 16.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('AI_RECIPE__GENERATE_RECIPES__BTN_ON_TAP');
                    logFirebaseEvent('Button_backend_call');
                    _model.recipeAPIOutput =
                        await GetRecipeSuggestionVTwoCall.call(
                      uid: currentUserReference?.id,
                    );

                    if ((_model.recipeAPIOutput?.succeeded ?? true)) {
                      logFirebaseEvent('Button_update_page_state');
                      _model.recipeData =
                          (_model.recipeAPIOutput?.jsonBody ?? '');
                      _model.buttonPressed = true;
                      safeSetState(() {});
                    }

                    safeSetState(() {});
                  },
                  text: '✨ Generate Recipes ✨ ',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50.0,
                    padding: EdgeInsets.all(8.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFF0AEBF),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.darumadropOne(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondary,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Visibility(
                      visible: _model.buttonPressed == true,
                      child: Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Builder(
                          builder: (context) {
                            final pantryItemData = getJsonField(
                              _model.recipeData,
                              r'''$.itemSuggestions[:].picks[:]''',
                            ).toList();

                            return ListView.separated(
                              padding: EdgeInsets.fromLTRB(
                                0,
                                8.0,
                                0,
                                24.0,
                              ),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: pantryItemData.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 12.0),
                              itemBuilder: (context, pantryItemDataIndex) {
                                final pantryItemDataItem =
                                    pantryItemData[pantryItemDataIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'AI_RECIPE_Container_f1dhv3m7_ON_TAP');
                                    logFirebaseEvent(
                                        'newGeneratedRecipe_bottom_sheet');
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      barrierColor: Color(0x80000000),
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () {
                                            FocusScope.of(context).unfocus();
                                            FocusManager.instance.primaryFocus
                                                ?.unfocus();
                                          },
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.85,
                                              child: PopupFoodWidget(
                                                image: getJsonField(
                                                  pantryItemDataItem,
                                                  r'''$.thumbnail ''',
                                                ).toString(),
                                                recipeName: getJsonField(
                                                  pantryItemDataItem,
                                                  r'''$.name''',
                                                ).toString(),
                                                instructions: getJsonField(
                                                  pantryItemDataItem,
                                                  r'''$.instructions''',
                                                ).toString(),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  child: NewGeneratedRecipeWidget(
                                    key: Key(
                                        'Keyf1d_${pantryItemDataIndex}_of_${pantryItemData.length}'),
                                    recipeName: getJsonField(
                                      pantryItemDataItem,
                                      r'''$.name''',
                                    ).toString(),
                                    imageURL: getJsonField(
                                      pantryItemDataItem,
                                      r'''$.thumbnail''',
                                    ).toString(),
                                    difficulty: getJsonField(
                                      pantryItemDataItem,
                                      r'''$.difficulty''',
                                    ).toString(),
                                    instructions: getJsonField(
                                      pantryItemDataItem,
                                      r'''$.instructions''',
                                    ).toString(),
                                    idMeal: getJsonField(
                                      pantryItemDataItem,
                                      r'''$.idMeal''',
                                    ).toString(),
                                    reason: valueOrDefault<String>(
                                      getJsonField(
                                        pantryItemDataItem,
                                        r'''$.reason''',
                                      )?.toString(),
                                      '\$.reason',
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.navBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NavBarWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
