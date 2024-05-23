import 'package:coolmovies/common/services/graphql_service.dart';
import 'package:coolmovies/modules/movies_home/data/data_source/movies_home_api_datasource_impl.dart';
import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'movies_home_api_datasource_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GraphQLService>()])
void main() {
  late MockGraphQLService mockGraphQLService;
  late MoviesHomeApiDatasourceImpl datasource;

  setUp(() {
    mockGraphQLService = MockGraphQLService();
    datasource = MoviesHomeApiDatasourceImpl(
        client: mockGraphQLService.initClient().value);
  });

  group('MoviesHomeApiDatasourceImpl', () {
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

      when(mockGraphQLService.initClient().value.query(any)).thenAnswer(
        (_) async => QueryResult(
          options: any,
          source: QueryResultSource.network,
          data: mockResponse,
        ),
      );

      // Act
      final result = await datasource.getMovies();

      // Assert
      expect(result, isA<List<Movies>>());
      expect(result.length, 2);
      expect(result[0].title, 'Movie 1');
      expect(result[1].title, 'Movie 2');
    });
  });
}
