import 'package:coolmovies/common/exception/cool_movies_exception.dart';
import 'package:coolmovies/modules/movies_home/data/data_source/movies_home_api_datasource.dart';
import 'package:coolmovies/modules/movies_home/data/models/create_movie_review_model.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/domain/repository/movies_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'movies_repository_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<MoviesHomeApiDatasource>()])
void main() {
  late MockMoviesHomeApiDatasource mockMoviesHomeApiDatasource;
  late MoviesRepositoryImpl moviesRepositoryImpl;

  setUp(() {
    mockMoviesHomeApiDatasource = MockMoviesHomeApiDatasource();
    moviesRepositoryImpl = MoviesRepositoryImpl(
        moviesHomeApiDatasource: mockMoviesHomeApiDatasource);
  });

  group('MoviesRepositoryImpl', () {
    test('should return list of Movies when the request is successful',
        () async {
      when(mockMoviesHomeApiDatasource.getMovies()).thenAnswer(
        (_) async =>
            [const Movies(title: 'Movie 1'), const Movies(title: 'Movie 2')],
      );

      final result = await moviesRepositoryImpl.getMovies();

      expect(result, isA<Right<CoolMoviesException, List<Movies>>>());
      expect(result.fold((l) => [], (r) => r).length, 2);
      expect(result.fold((l) => [], (r) => r)[0].title, 'Movie 1');
      expect(result.fold((l) => [], (r) => r)[1].title, 'Movie 2');
    });

    test('should create a movie review', () async {
      final model = CreateMovieReviewModel(
        title: 'Great movie!',
        movieId: '123',
        userReviewerId: '456',
        rating: 5,
        body: 'This movie was amazing!',
        id: '456',
      );

      when(mockMoviesHomeApiDatasource.createMovieReview(model: model))
          .thenAnswer((_) async => true);

      final result = await moviesRepositoryImpl.createMoviesReview(model);

      expect(result, isA<Right<CoolMoviesException, bool>>());
      expect(result.fold((l) => false, (r) => r), true);
    });
  });
}
