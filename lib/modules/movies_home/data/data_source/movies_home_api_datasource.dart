import 'package:coolmovies/modules/movies_home/data/models/create_movie_review_model.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';

abstract class MoviesHomeApiDatasource {
  Future<List<Movies>> getMovies();
  Future<bool> createMovieReview({required CreateMovieReviewModel model});
}
