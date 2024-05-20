import 'package:coolmovies/common/di/locator.dart';
import 'package:coolmovies/modules/movies_home/data/data_source/movies_home_api_datasource.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/data/repository/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  MoviesRepositoryImpl({MoviesHomeApiDatasource? moviesHomeApiDatasource})
      : _moviesHomeApiDatasource =
            moviesHomeApiDatasource ?? locator.get<MoviesHomeApiDatasource>();

  final MoviesHomeApiDatasource _moviesHomeApiDatasource;
  @override
  Future<List<Movies>> getMovies() async {
    return await _moviesHomeApiDatasource.getMovies();
  }
}
