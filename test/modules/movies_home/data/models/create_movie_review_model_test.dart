import 'package:coolmovies/modules/movies_home/data/models/create_movie_review_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CreateMovieReviewModel', () {
    test('should create a valid model', () {
      const title = 'Great movie!';
      const movieId = '123';
      const userReviewerId = '456';
      const rating = 5;
      const body = 'This movie was amazing!';
      const id = '456';

      final model = CreateMovieReviewModel(
        title: title,
        movieId: movieId,
        userReviewerId: userReviewerId,
        rating: rating,
        body: body,
        id: id,
      );

      expect(model.title, title);
      expect(model.movieId, movieId);
      expect(model.rating, rating);
      expect(model.body, body);
      expect(model.id, id);
    });

    test('should throw an error if title is empty', () {
      const title = '';
      const movieId = '123';
      const userReviewerId = '456';
      const rating = 5;
      const body = 'This movie was amazing!';
      const id = '456';

      expect(
        () => CreateMovieReviewModel(
          title: title,
          movieId: movieId,
          userReviewerId: userReviewerId,
          rating: rating,
          body: body,
          id: id,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should throw an error if movieId is empty', () {
      const title = 'Great movie!';
      const movieId = '';
      const rating = 5;
      const body = 'This movie was amazing!';
      const id = '456';

      expect(
        () => CreateMovieReviewModel(
          title: title,
          movieId: movieId,
          userReviewerId: '456',
          rating: rating,
          body: body,
          id: id,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should throw an error if rating is less than 1', () {
      const title = 'Great movie!';
      const movieId = '123';
      const rating = 0;
      const body = 'This movie was amazing!';
      const id = '456';

      expect(
        () => CreateMovieReviewModel(
          title: title,
          movieId: movieId,
          rating: rating,
          userReviewerId: '456',
          body: body,
          id: id,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should throw an error if rating is greater than 5', () {
      const title = 'Great movie!';
      const movieId = '123';
      const rating = 6;
      const body = 'This movie was amazing!';
      const id = '456';

      expect(
        () => CreateMovieReviewModel(
          title: title,
          movieId: movieId,
          rating: rating,
          userReviewerId: '456',
          body: body,
          id: id,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should throw an error if body is empty', () {
      // Arrange
      const title = 'Great movie!';
      const movieId = '123';
      const rating = 5;
      const body = '';
      const id = '456';

      expect(
        () => CreateMovieReviewModel(
          title: title,
          userReviewerId: '',
          movieId: movieId,
          rating: rating,
          body: body,
          id: id,
        ),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should throw an error if id is empty', () {
      const title = 'Great movie!';
      const movieId = '123';
      const rating = 5;
      const body = 'This movie was amazing!';
      const id = '';

      expect(
        () => CreateMovieReviewModel(
          title: title,
          movieId: movieId,
          rating: rating,
          userReviewerId: '456',
          body: body,
          id: id,
        ),
        throwsA(isA<AssertionError>()),
      );
    });
  });
}
