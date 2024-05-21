import 'dart:io';

import 'package:coolmovies/common/services/graphql_service.dart';
import 'package:coolmovies/core/navigation/app_router.dart';
import 'package:coolmovies/modules/movies_home/data/data_source/movies_home_api_datasource.dart';
import 'package:coolmovies/modules/movies_home/data/data_source/movies_home_api_datasource_impl.dart';
import 'package:coolmovies/modules/movies_home/data/repository/movies_repository.dart';
import 'package:coolmovies/modules/movies_home/domain/repository/movies_repository_impl.dart';
import 'package:coolmovies/modules/movies_home/domain/usecases/get_movies_usecase.dart';
import 'package:coolmovies/modules/movies_home/presentation/view_models/movies_home_viewmodel.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

GetIt locator = GetIt.I;

injectDependencies() async {
  locator.registerLazySingleton<GoRouter>(() => appRouter());

  locator.registerLazySingleton<GraphQLService>(() => GraphQLService());

  locator.registerLazySingleton<GraphQLClient>(
      () => locator.get<GraphQLService>().initClient().value);
  locator.registerLazySingleton<MoviesHomeApiDatasource>(
      () => MoviesHomeApiDatasourceImpl(client: locator.get()));
  locator.registerLazySingleton<MoviesRepository>(
      () => MoviesRepositoryImpl(moviesHomeApiDatasource: locator.get()));
  locator.registerFactory<GetMoviesUsecase>(
      () => GetMoviesUsecase(moviesRepository: locator.get()));
  locator.registerFactory<MoviesHomeViewmodel>(
      () => MoviesHomeViewmodel(getMoviesUsecase: locator.get()));
}
