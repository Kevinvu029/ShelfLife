import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.95),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.92,
        height: 60.0,
        decoration: BoxDecoration(
          color: Color(0x00B32121),
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Container(
          width: 100.0,
          height: 120.0,
          child: Stack(
            alignment: AlignmentDirectional(0.0, 0.050000000000000044),
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 100.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(60.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.05, -0.05),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlutterFlowIconButton(
                      key: ValueKey('IconButton_5ds9'),
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.home_rounded,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 28.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'NAV_BAR_COMP_home_rounded_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.goNamed(
                          HomePageWidget.routeName,
                          extra: <String, dynamic>{
                            '__transition_info__': TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.list,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('NAV_BAR_COMP_list_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed(
                          FoodListWidget.routeName,
                          extra: <String, dynamic>{
                            '__transition_info__': TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );
                      },
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.05, 0.0),
                          child: FlutterFlowIconButton(
                            key: ValueKey('IconButton_i0q3'),
                            borderColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: 25.0,
                            borderWidth: 1.0,
                            buttonSize: 56.0,
                            fillColor: FlutterFlowTheme.of(context).primary,
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 35.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent('NAV_BAR_COMP_add_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_navigate_to');

                              context.goNamed(
                                BarcodePageWidget.routeName,
                                extra: <String, dynamic>{
                                  '__transition_info__': TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      icon: Icon(
                        Icons.star,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 26.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('NAV_BAR_COMP_star_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_navigate_to');

                        context.pushNamed(
                          SurveyPageWidget.routeName,
                          extra: <String, dynamic>{
                            '__transition_info__': TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.logout,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 26.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent('NAV_BAR_COMP_logout_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_auth');
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        context.goNamedAuth(
                            AccWidget.routeName, context.mounted);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
