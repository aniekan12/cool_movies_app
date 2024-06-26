import 'package:coolmovies/common/di/locator.dart';
import 'package:coolmovies/common/exception/cool_movies_exception.dart';
import 'package:coolmovies/common/io/usecase/usecase.dart';
import 'package:coolmovies/modules/movies_home/data/models/create_movie_review_model.dart';
import 'package:coolmovies/modules/movies_home/data/repository/movies_repository.dart';
import 'package:dartz/dartz.dart';

class CreateMovieReviewUsecase
    extends UseCase<CreateMovieReviewModel, CoolMoviesException, bool> {
  CreateMovieReviewUsecase({MoviesRepository? moviesRepository})
      : _moviesRepository = moviesRepository ?? locator.get<MoviesRepository>();

  factory CreateMovieReviewUsecase.instance() =>
      locator.get<CreateMovieReviewUsecase>();

  final MoviesRepository _moviesRepository;
  @override
  Future<Either<CoolMoviesException, bool>> invoke(
      CreateMovieReviewModel input) {
    return _moviesRepository.createMoviesReview(input);
  }
}
