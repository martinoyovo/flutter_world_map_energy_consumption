// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';
import 'package:codewars2/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBJD7uyWP-ILhDfHF9KEUW9Yy_-8a697E4",
        authDomain: "codewarshacakathon.firebaseapp.com",
        projectId: "codewarshacakathon",
        storageBucket: "codewarshacakathon.appspot.com",
        messagingSenderId: "256929836570",
        appId: "1:256929836570:web:d3d29009c4854671c52ba3",
        measurementId: "G-X8HL4HTH8R"
    ),
  );

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
        () async => runApp(const App()),
        (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
