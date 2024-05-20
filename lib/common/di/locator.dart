import 'package:coolmovies/core/navigation/app_router.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

GetIt locator = GetIt.I;

injectDependencies() async {
  locator.registerLazySingleton<GoRouter>(() => appRouter());
  locator.registerLazySingleton<GraphQLClient>(
      () => GraphQLClient(link: HttpLink(''), cache: GraphQLCache()));
}
