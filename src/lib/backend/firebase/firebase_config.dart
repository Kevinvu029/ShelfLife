import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC5UzI5-O_FeL_33AaDGVkgOsCWLAn3CC0",
            authDomain: "shelf-life-ugqnhg.firebaseapp.com",
            projectId: "shelf-life-ugqnhg",
            storageBucket: "shelf-life-ugqnhg.firebasestorage.app",
            messagingSenderId: "1020562674446",
            appId: "1:1020562674446:web:85f06519a3cfa86b0afd5f",
            measurementId: "G-Z9X41EL28K"));
  } else {
    await Firebase.initializeApp();
  }
}
