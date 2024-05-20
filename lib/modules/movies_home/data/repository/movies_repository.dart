import 'package:coolmovies/modules/movies_home/data/models/movies.dart';

abstract class MoviesRepository {
  Future<List<Movies>> getMovies();
}
