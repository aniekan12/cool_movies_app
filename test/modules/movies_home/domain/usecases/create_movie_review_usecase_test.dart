import 'package:coolmovies/common/exception/cool_movies_exception.dart';
import 'package:coolmovies/modules/movies_home/data/models/create_movie_review_model.dart';
import 'package:coolmovies/modules/movies_home/domain/usecases/create_movie_review_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'get_movies_usecase_test.mocks.dart';

void main() {
  late CreateMovieReviewUsecase createMovieReviewUsecase;
  late MockMoviesRepository mockMoviesRepository;

  setUp(() {
    mockMoviesRepository = MockMoviesRepository();
    createMovieReviewUsecase =
        CreateMovieReviewUsecase(moviesRepository: mockMoviesRepository);
  });

  group('create movie review usecase ...', () {
    test('should return success and create movie review...', () async {
      final input = CreateMovieReviewModel(
        title: 'Great movie!',
        movieId: '123',
        userReviewerId: '456',
        rating: 5,
        body: 'This movie was amazing!',
        id: '456',
      );

      when(mockMoviesRepository.createMoviesReview(input))
          .thenAnswer((_) => Future.value(const Right(true)));

      final result = await createMovieReviewUsecase.invoke(input);
      expect(result, isA<Right<CoolMoviesException, bool>>());
      expect(result.fold((l) => false, (r) => r), true);
    });
  });
}
