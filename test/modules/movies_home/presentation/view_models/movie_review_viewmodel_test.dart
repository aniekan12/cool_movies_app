import 'package:bloc_test/bloc_test.dart';
import 'package:coolmovies/modules/movies_home/data/models/create_movie_review_model.dart';
import 'package:coolmovies/modules/movies_home/domain/usecases/create_movie_review_usecase.dart';
import 'package:coolmovies/modules/movies_home/presentation/view_models/movie_review_viewmodel.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'movie_review_viewmodel_test.mocks.dart';

@GenerateNiceMocks([MockSpec<CreateMovieReviewUsecase>()])
void main() {
  late MovieReviewViewmodel viewmodel;
  late MockCreateMovieReviewUsecase mockCreateMovieReviewUsecase;

  setUp(() {
    mockCreateMovieReviewUsecase = MockCreateMovieReviewUsecase();
    viewmodel =
        MovieReviewViewmodel(movieReviewUsecase: mockCreateMovieReviewUsecase);
  });

  group('movie review viewmodel', () {
    final input = CreateMovieReviewModel(
        title: 'Great Movie!',
        movieId: '030039-sosoos-9292',
        userReviewerId: '000-393939-sksks',
        rating: 5,
        body: 'This movie was amazing');

    blocTest(
      'emits [] when nothing is added',
      build: () => viewmodel,
      expect: () => [],
    );

    blocTest(
      'emits [MoviesReviewAdding] when Add Movie is added',
      build: () {
        when(mockCreateMovieReviewUsecase.invoke(input))
            .thenAnswer((_) => Future.value(const Right(true)));
        return viewmodel;
      },
      act: (bloc) => bloc.add(AddMovieReview(input)),
      expect: () => [isA<MoviesReviewAdding>(), isA<MoviesReviewAddSuccess>()],
    );
  });
}
