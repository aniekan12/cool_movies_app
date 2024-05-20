part of '../view_models/movies_home_viewmodel.dart';

@immutable
sealed class MoviesHomeState {}

final class MoviesHomeInitial extends MoviesHomeState {}

final class MoviesHomeLoading extends MoviesHomeState {}

final class MoviesHomeLoaded extends MoviesHomeState {
  final List<Movies> movies;

  MoviesHomeLoaded(this.movies);
}

final class MoviesHomeError extends MoviesHomeState {
  final String message;

  MoviesHomeError(this.message);
}
