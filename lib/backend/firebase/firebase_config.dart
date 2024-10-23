import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAq8kVB029Imp8gNLQaUMnyU4aFg1DPRqw",
            authDomain: "jobfinder-dee59.firebaseapp.com",
            projectId: "jobfinder-dee59",
            storageBucket: "jobfinder-dee59.appspot.com",
            messagingSenderId: "891756376309",
            appId: "1:891756376309:web:75c7f3e86287509d1115bc"));
  } else {
    await Firebase.initializeApp();
  }
}
