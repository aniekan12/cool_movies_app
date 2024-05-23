import 'package:coolmovies/common/di/locator.dart';
import 'package:coolmovies/common/exception/cool_movies_exception.dart';
import 'package:coolmovies/common/io/usecase/usecase.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/data/repository/movies_repository.dart';
import 'package:dartz/dartz.dart';

class GetMoviesUsecase
    extends UseCase<void, CoolMoviesException, List<Movies>> {
  GetMoviesUsecase({MoviesRepository? moviesRepository})
      : _moviesRepository = moviesRepository ?? locator.get<MoviesRepository>();

  factory GetMoviesUsecase.instance() => locator.get<GetMoviesUsecase>();

  final MoviesRepository _moviesRepository;
  @override
  Future<Either<CoolMoviesException, List<Movies>>> invoke([void input]) {
    return _moviesRepository.getMovies();
  }
}
