import 'dart:async';
import 'package:coolmovies/common/services/graphql_service.dart';
import 'package:coolmovies/core/observer/cool_movies_bloc_observer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'common/di/locator.dart';
import 'cool_movies_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();
  await injectDependencies();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(GraphQLProvider(
      client: locator<GraphQLService>().initClient(),
      child: const CoolMoviesApp()));
}
