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
      movieReviewsByMovieId: json['movieReviewsByMovieId'] == null
          ? null
          : MovieReviews.fromJson(
              json['movieReviewsByMovieId'] as Map<String, dynamic>),
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
      'movieReviewsByMovieId': instance.movieReviewsByMovieId,
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

_$MovieReviewsImpl _$$MovieReviewsImplFromJson(Map<String, dynamic> json) =>
    _$MovieReviewsImpl(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => Edges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MovieReviewsImplToJson(_$MovieReviewsImpl instance) =>
    <String, dynamic>{
      'edges': instance.edges,
    };

_$EdgesImpl _$$EdgesImplFromJson(Map<String, dynamic> json) => _$EdgesImpl(
      node: json['node'] == null
          ? null
          : Nodes.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EdgesImplToJson(_$EdgesImpl instance) =>
    <String, dynamic>{
      'node': instance.node,
    };

_$NodesImpl _$$NodesImplFromJson(Map<String, dynamic> json) => _$NodesImpl(
      id: json['id'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$$NodesImplToJson(_$NodesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'title': instance.title,
      'body': instance.body,
    };
