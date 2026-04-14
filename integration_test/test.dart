import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shelf_life/flutter_flow/flutter_flow_icon_button.dart';
import 'package:shelf_life/flutter_flow/flutter_flow_radio_button.dart';
import 'package:shelf_life/flutter_flow/flutter_flow_widgets.dart';
import 'package:shelf_life/flutter_flow/flutter_flow_theme.dart';
import 'package:shelf_life/index.dart';
import 'package:shelf_life/main.dart';
import 'package:shelf_life/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:shelf_life/backend/firebase/firebase_config.dart';
import 'package:shelf_life/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  testWidgets('Login Test ', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: AccWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('acc_ufz2')));
    await tester.pump(kDoubleTapMinTime);
    await tester.tap(find.byKey(const ValueKey('acc_ufz2')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('emailAddress_eqtz')));
    await tester.enterText(
        find.byKey(const ValueKey('emailAddress_eqtz')), 'poop2@email.com');
    await tester.tap(find.byKey(const ValueKey('password_lsms')));
    await tester.enterText(
        find.byKey(const ValueKey('password_lsms')), '1234567');
    await tester.tap(find.byKey(const ValueKey('Button_by2i')));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    expect(find.byKey(const ValueKey('Text_9l9l')), findsWidgets);
  });

  testWidgets('US5 - Monthly Analytics', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'snap@chat.com', password: '1234567');
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.tap(find.descendant(
      of: find.byKey(const ValueKey('NavBar_tg10')),
      matching: find.byKey(const ValueKey('IconButton_i0q3')),
    ));
    await tester.enterText(
        find.byKey(const ValueKey('itemNameField_iavf')), 'Pastry and Matcha');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.enterText(
        find.byKey(const ValueKey('priceField_c0xx')), '12.69');
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.tap(find.byKey(const ValueKey('expDateButton_yr7q')));
    await tester.tap(find.byKey(const ValueKey('addFoodButton_5afu')));
    await tester.tap(find.descendant(
      of: find.byKey(const ValueKey('NavBar_f1yv')),
      matching: find.byKey(const ValueKey('IconButton_5ds9')),
    ));
    expect(find.byKey(const ValueKey('Container_u0g7')), findsOneWidget);
  });

  testWidgets('missingFoodInfo', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'KV2@TESTING.MAIL', password: 'KV2TESTING');
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(
        entryPage: BarcodePageWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 1000));
    await tester.enterText(
        find.byKey(const ValueKey('itemNameField_iavf')), 'Muffin');
    await tester.enterText(
        find.byKey(const ValueKey('priceField_c0xx')), '8.00');
    await tester.tap(find.byKey(const ValueKey('addFoodButton_5afu')));
    expect(
        find.text(
            'PLEASE FILL OUT ALL SECTIONS AND SELECT A DATE BEFORE CLICKING \"Add Food!\"'),
        findsWidgets);
  });

  testWidgets('US1 Account creation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.enterText(
        find.byKey(const ValueKey('emailAddress_Create_np8b')),
        'new_user@gmail.com');
    await tester.enterText(
        find.byKey(const ValueKey('password_Create_1fci')), 'test123');
    await tester.enterText(
        find.byKey(const ValueKey('confirm_password_Create_vd6p')), 'test123');
    await tester.tap(find.byKey(const ValueKey('Button_3r9y')));
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }
  // Web-specific error when interacting with TextInputType.emailAddress
  if (error.contains('setSelectionRange') &&
      error.contains('HTMLInputElement')) {
    return true;
  }

  return false;
}
