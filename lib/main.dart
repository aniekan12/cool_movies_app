import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'common/di/locator.dart';
import 'common/io/logger/logger.dart';
import 'cool_movies_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectDependencies();
  registerErrorHandlers();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const CoolMoviesApp());
}

void registerErrorHandlers() {
  final logger = LoggerFactory.getLogger();
  FlutterError.onError = (err) {
    logger.log(LogLevel.severe, err.summary, err.exception, err.stack);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    logger.log(LogLevel.severe, "PlatformDispatcher", error, stack);
    return true;
  };
}
