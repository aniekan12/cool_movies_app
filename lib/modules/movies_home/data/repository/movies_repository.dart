import 'package:coolmovies/common/exception/cool_movies_exception.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:dartz/dartz.dart';

abstract class MoviesRepository {
  Future<Either<CoolMoviesException, List<Movies>>> getMovies();
}
