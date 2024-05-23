// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'movies.freezed.dart';
part 'movies.g.dart';

@freezed
abstract class Movies with _$Movies {
  const factory Movies({
    String? id,
    String? imgUrl,
    String? movieDirectorId,
    String? userCreatorId,
    String? title,
    String? releaseDate,
    String? nodeId,
    UserByUserCreatorId? userByUserCreatorId,
    MovieReviews? movieReviewsByMovieId,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}

@freezed
class UserByUserCreatorId with _$UserByUserCreatorId {
  const factory UserByUserCreatorId({
    String? id,
    String? name,
    String? nodeId,
  }) = _UserByUserCreatorId;

  factory UserByUserCreatorId.fromJson(Map<String, dynamic> json) =>
      _$UserByUserCreatorIdFromJson(json);
}

@freezed
abstract class MovieReviews with _$MovieReviews {
  const factory MovieReviews({
    List<Edges>? edges,
  }) = _MovieReviews;

  factory MovieReviews.fromJson(Map<String, dynamic> json) =>
      _$MovieReviewsFromJson(json);
}

@freezed
abstract class Edges with _$Edges {
  const factory Edges({
    Nodes? node,
  }) = _Edges;

  factory Edges.fromJson(Map<String, dynamic> json) => _$EdgesFromJson(json);
}

@freezed
abstract class Nodes with _$Nodes {
  const factory Nodes({
    String? id,
    int? rating,
    String? title,
    String? body,
  }) = _Nodes;

  factory Nodes.fromJson(Map<String, dynamic> json) => _$NodesFromJson(json);
}
