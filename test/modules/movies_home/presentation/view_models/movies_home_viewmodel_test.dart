import 'package:bloc_test/bloc_test.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/domain/usecases/get_movies_usecase.dart';
import 'package:coolmovies/modules/movies_home/presentation/view_models/movies_home_viewmodel.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'movies_home_viewmodel_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GetMoviesUsecase>()])
void main() {
  late MoviesHomeViewmodel viewmodel;
  late MockGetMoviesUsecase mockGetMoviesUsecase;

  setUp(() {
    mockGetMoviesUsecase = MockGetMoviesUsecase();
    viewmodel = MoviesHomeViewmodel(getMoviesUsecase: mockGetMoviesUsecase);
  });

  group('movie home viewmodel', () {
    blocTest(
      'emits [] when nothing is added',
      build: () => viewmodel,
      expect: () => [],
    );

    blocTest(
      'emits [MoviesLoading, MoviesLoaded] when Fetch Movies is called',
      build: () {
        when(mockGetMoviesUsecase.invoke())
            .thenAnswer((_) => Future.value(const Right([Movies()])));
        return viewmodel;
      },
      act: (bloc) => bloc.add(FetchMovies()),
      expect: () => [isA<MoviesHomeLoading>(), isA<MoviesHomeLoaded>()],
    );
  });
}
