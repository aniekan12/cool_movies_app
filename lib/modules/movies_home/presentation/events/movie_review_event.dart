part of '../view_models/movie_review_viewmodel.dart';

@immutable
sealed class MovieReviewEvent {}

final class AddMovieReview extends MovieReviewEvent {
  final CreateMovieReviewModel createMovieReviewModel;

  AddMovieReview(this.createMovieReviewModel);
}
