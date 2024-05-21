import 'dart:async';
import 'package:coolmovies/common/services/graphql_service.dart';
import 'package:coolmovies/core/observer/cool_movies_bloc_observer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'common/di/locator.dart';
import 'common/io/logger/logger.dart';
import 'cool_movies_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injectDependencies();
  registerErrorHandlers();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Bloc.observer = const AppBlocObserver();
  runApp(GraphQLProvider(
      client: locator<GraphQLService>().initClient(),
      child: const CoolMoviesApp()));
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
