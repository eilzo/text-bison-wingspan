import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA3Rd8WT1AZLwEE-tkW3FRK6Ph4-gBgMVI",
            authDomain: "textbison.firebaseapp.com",
            projectId: "textbison",
            storageBucket: "textbison.appspot.com",
            messagingSenderId: "63930386554",
            appId: "1:63930386554:web:221ba518db8f2fa10e93c3"));
  } else {
    await Firebase.initializeApp();
  }
}
