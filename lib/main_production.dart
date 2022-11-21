// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';
import 'package:codewars2/app.dart';
import 'package:flutter/widgets.dart';

void main() async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
        () async => runApp(const App()),
        (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
