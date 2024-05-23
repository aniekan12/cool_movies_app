import 'package:coolmovies/common/exception/cool_movies_exception.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:coolmovies/modules/movies_home/data/repository/movies_repository.dart';
import 'package:coolmovies/modules/movies_home/domain/usecases/get_movies_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_movies_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<MoviesRepository>()])
void main() {
  late MockMoviesRepository mockMoviesRepository;
  late GetMoviesUsecase getMoviesUsecase;

  setUp(() {
    mockMoviesRepository = MockMoviesRepository();
    getMoviesUsecase = GetMoviesUsecase(moviesRepository: mockMoviesRepository);
  });

  group('GetMoviesUsecase', () {
    test('should return list of Movies when the request is successful',
        () async {
      // Arrange
      final mockResponse = {
        'allMovies': {
          'nodes': [
            {
              'id': '1',
              'imgUrl': 'url1',
              'movieDirectorId': 'director1',
              'userCreatorId': 'creator1',
              'title': 'Movie 1',
              'releaseDate': '2022-01-01',
              'nodeId': 'node1',
              'userByUserCreatorId': {
                'id': 'user1',
                'name': 'User 1',
                'nodeId': 'userNode1',
              },
            },
            {
              'id': '2',
              'imgUrl': 'url2',
              'movieDirectorId': 'director2',
              'userCreatorId': 'creator2',
              'title': 'Movie 2',
              'releaseDate': '2022-02-01',
              'nodeId': 'node2',
              'userByUserCreatorId': {
                'id': 'user2',
                'name': 'User 2',
                'nodeId': 'userNode2',
              },
            },
          ],
        },
      };

      when(mockMoviesRepository.getMovies())
          .thenAnswer((_) async => Future.value(
                Right<CoolMoviesException, List<Movies>>(
                  mockResponse['allMovies']!['nodes']!
                      .map((e) => Movies.fromJson(e))
                      .toList(),
                ),
              ));

      // Act
      final result = await getMoviesUsecase.invoke();

      // Assert
      expect(result, isA<Right<CoolMoviesException, List<Movies>>>());
      expect(result.fold((l) => [], (r) => r).length, 2);
      expect(result.fold((l) => [], (r) => r)[0].title, 'Movie 1');
      expect(result.fold((l) => [], (r) => r)[1].title, 'Movie 2');
    });
  });
}
