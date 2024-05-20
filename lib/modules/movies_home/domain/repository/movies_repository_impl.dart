import 'package:coolmovies/common/di/locator.dart';
import 'package:coolmovies/common/exception/cool_movies_exception.dart';
import 'package:coolmovies/modules/movies_home/data/data_source/movies_home_api_datasource.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/data/repository/movies_repository.dart';
import 'package:dartz/dartz.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  MoviesRepositoryImpl({MoviesHomeApiDatasource? moviesHomeApiDatasource})
      : _moviesHomeApiDatasource =
            moviesHomeApiDatasource ?? locator.get<MoviesHomeApiDatasource>();

  final MoviesHomeApiDatasource _moviesHomeApiDatasource;
  @override
  Future<Either<CoolMoviesException, List<Movies>>> getMovies() async {
    try {
      final movies = await _moviesHomeApiDatasource.getMovies();
      return Right(movies);
    } catch (e) {
      return Left(CoolMoviesException(e.toString()));
    }
  }
}
