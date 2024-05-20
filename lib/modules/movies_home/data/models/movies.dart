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
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) =>
      _$MoviesFromJson(json['allMovies']);
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
