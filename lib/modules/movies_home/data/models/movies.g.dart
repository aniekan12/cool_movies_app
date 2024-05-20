// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoviesImpl _$$MoviesImplFromJson(Map<String, dynamic> json) => _$MoviesImpl(
      id: json['id'] as String?,
      imgUrl: json['imgUrl'] as String?,
      movieDirectorId: json['movieDirectorId'] as String?,
      userCreatorId: json['userCreatorId'] as String?,
      title: json['title'] as String?,
      releaseDate: json['releaseDate'] as String?,
      nodeId: json['nodeId'] as String?,
      userByUserCreatorId: json['userByUserCreatorId'] == null
          ? null
          : UserByUserCreatorId.fromJson(
              json['userByUserCreatorId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MoviesImplToJson(_$MoviesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'movieDirectorId': instance.movieDirectorId,
      'userCreatorId': instance.userCreatorId,
      'title': instance.title,
      'releaseDate': instance.releaseDate,
      'nodeId': instance.nodeId,
      'userByUserCreatorId': instance.userByUserCreatorId,
    };

_$UserByUserCreatorIdImpl _$$UserByUserCreatorIdImplFromJson(
        Map<String, dynamic> json) =>
    _$UserByUserCreatorIdImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      nodeId: json['nodeId'] as String?,
    );

Map<String, dynamic> _$$UserByUserCreatorIdImplToJson(
        _$UserByUserCreatorIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nodeId': instance.nodeId,
    };
