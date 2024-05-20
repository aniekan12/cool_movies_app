import 'package:coolmovies/common/di/locator.dart';
import 'package:coolmovies/common/io/usecase/usecase.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/data/repository/movies_repository.dart';

class GetMoviesUsecase extends UseCase<void, List<Movies>> {
  GetMoviesUsecase({MoviesRepository? moviesRepository})
      : _moviesRepository = moviesRepository ?? locator.get<MoviesRepository>();

  final MoviesRepository _moviesRepository;
  @override
  Future<List<Movies>> invoke(void input) {
    return _moviesRepository.getMovies();
  }
}
