part of '../view_models/movie_review_viewmodel.dart';

@immutable
sealed class MovieReviewState {}

final class MovieReviewInitial extends MovieReviewState {}

final class MoviesReviewAdding extends MovieReviewState {}

final class MoviesReviewAddError extends MovieReviewState {
  final String message;

  MoviesReviewAddError(this.message);
}

final class MoviesReviewAddSuccess extends MovieReviewState {
  final bool isAdded;
  final String message;

  MoviesReviewAddSuccess(this.isAdded, this.message);
}
