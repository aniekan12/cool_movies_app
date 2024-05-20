import 'dart:async';

import 'package:accelerate_mobile_app/accelerate_mobile_app.dart';
import 'package:accelerate_mobile_app/modules/notifications/app_notification_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:irecharge_app_module_starter/common/io/logger/logger_factory.dart';

import 'common/di/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectDependencies();
  registerErrorHandlers();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const CoolMoviesApp(isDebug: false));
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

// mary.a@istrategytech.com
// virgoanstar@gmail.com
// Password123
