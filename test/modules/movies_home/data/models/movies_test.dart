import 'package:coolmovies/modules/movies_home/data/models/movies.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Movies', () {
    test('should create a valid model from json', () {
      // Arrange
      final json = {
        'id': '123',
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
        'movieReviewsByMovieId': {
          'edges': [
            {
              'node': {
                'id': 'review1',
                'rating': 5,
                'title': 'Review 1',
                'body': 'This movie was amazing!',
                'userByUserReviewerId': {
                  'id': 'user1',
                }
              }
            }
          ]
        },
      };

      // Act
      final model = Movies.fromJson(json);

      // Assert
      expect(model.id, '123');
      expect(model.imgUrl, 'url1');
      expect(model.movieDirectorId, 'director1');
      expect(model.userCreatorId, 'creator1');
      expect(model.title, 'Movie 1');
      expect(model.releaseDate, '2022-01-01');
      expect(model.nodeId, 'node1');
      expect(
          model.userByUserCreatorId,
          const UserByUserCreatorId(
              id: 'user1', name: 'User 1', nodeId: 'userNode1'));
      expect(
          model.movieReviewsByMovieId,
          const MovieReviews(edges: [
            Edges(
                node: Nodes(
                    id: 'review1',
                    rating: 5,
                    title: 'Review 1',
                    body: 'This movie was amazing!',
                    userByUserReviewerId: UserByUserReviewerId(id: 'user1')))
          ]));
    });
  });
}
