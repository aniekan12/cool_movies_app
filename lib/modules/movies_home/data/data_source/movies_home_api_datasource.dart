import 'package:coolmovies/modules/movies_home/data/models/movies.dart';

abstract class MoviesHomeApiDatasource {
  Future<List<Movies>> getMovies();
  Future<bool> createMovieReview();
}
