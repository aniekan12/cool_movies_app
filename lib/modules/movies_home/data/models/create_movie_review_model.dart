class CreateMovieReviewModel {
  final String title;
  final String movieId;
  final int rating;
  final String body;
  final String id;

  CreateMovieReviewModel({
    required this.title,
    required this.movieId,
    required this.rating,
    required this.body,
    required this.id,
  })  : assert(title.isNotEmpty),
        assert(movieId.isNotEmpty),
        assert(rating >= 1 && rating <= 5),
        assert(body.isNotEmpty),
        assert(id.isNotEmpty);
}
