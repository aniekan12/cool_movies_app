// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Movies _$MoviesFromJson(Map<String, dynamic> json) {
  return _Movies.fromJson(json);
}

/// @nodoc
mixin _$Movies {
  String? get id => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get movieDirectorId => throw _privateConstructorUsedError;
  String? get userCreatorId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;
  String? get nodeId => throw _privateConstructorUsedError;
  UserByUserCreatorId? get userByUserCreatorId =>
      throw _privateConstructorUsedError;
  MovieReviews? get movieReviewsByMovieId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesCopyWith<Movies> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesCopyWith<$Res> {
  factory $MoviesCopyWith(Movies value, $Res Function(Movies) then) =
      _$MoviesCopyWithImpl<$Res, Movies>;
  @useResult
  $Res call(
      {String? id,
      String? imgUrl,
      String? movieDirectorId,
      String? userCreatorId,
      String? title,
      String? releaseDate,
      String? nodeId,
      UserByUserCreatorId? userByUserCreatorId,
      MovieReviews? movieReviewsByMovieId});

  $UserByUserCreatorIdCopyWith<$Res>? get userByUserCreatorId;
  $MovieReviewsCopyWith<$Res>? get movieReviewsByMovieId;
}

/// @nodoc
class _$MoviesCopyWithImpl<$Res, $Val extends Movies>
    implements $MoviesCopyWith<$Res> {
  _$MoviesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? movieDirectorId = freezed,
    Object? userCreatorId = freezed,
    Object? title = freezed,
    Object? releaseDate = freezed,
    Object? nodeId = freezed,
    Object? userByUserCreatorId = freezed,
    Object? movieReviewsByMovieId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      movieDirectorId: freezed == movieDirectorId
          ? _value.movieDirectorId
          : movieDirectorId // ignore: cast_nullable_to_non_nullable
              as String?,
      userCreatorId: freezed == userCreatorId
          ? _value.userCreatorId
          : userCreatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      userByUserCreatorId: freezed == userByUserCreatorId
          ? _value.userByUserCreatorId
          : userByUserCreatorId // ignore: cast_nullable_to_non_nullable
              as UserByUserCreatorId?,
      movieReviewsByMovieId: freezed == movieReviewsByMovieId
          ? _value.movieReviewsByMovieId
          : movieReviewsByMovieId // ignore: cast_nullable_to_non_nullable
              as MovieReviews?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserByUserCreatorIdCopyWith<$Res>? get userByUserCreatorId {
    if (_value.userByUserCreatorId == null) {
      return null;
    }

    return $UserByUserCreatorIdCopyWith<$Res>(_value.userByUserCreatorId!,
        (value) {
      return _then(_value.copyWith(userByUserCreatorId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieReviewsCopyWith<$Res>? get movieReviewsByMovieId {
    if (_value.movieReviewsByMovieId == null) {
      return null;
    }

    return $MovieReviewsCopyWith<$Res>(_value.movieReviewsByMovieId!, (value) {
      return _then(_value.copyWith(movieReviewsByMovieId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MoviesImplCopyWith<$Res> implements $MoviesCopyWith<$Res> {
  factory _$$MoviesImplCopyWith(
          _$MoviesImpl value, $Res Function(_$MoviesImpl) then) =
      __$$MoviesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? imgUrl,
      String? movieDirectorId,
      String? userCreatorId,
      String? title,
      String? releaseDate,
      String? nodeId,
      UserByUserCreatorId? userByUserCreatorId,
      MovieReviews? movieReviewsByMovieId});

  @override
  $UserByUserCreatorIdCopyWith<$Res>? get userByUserCreatorId;
  @override
  $MovieReviewsCopyWith<$Res>? get movieReviewsByMovieId;
}

/// @nodoc
class __$$MoviesImplCopyWithImpl<$Res>
    extends _$MoviesCopyWithImpl<$Res, _$MoviesImpl>
    implements _$$MoviesImplCopyWith<$Res> {
  __$$MoviesImplCopyWithImpl(
      _$MoviesImpl _value, $Res Function(_$MoviesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? movieDirectorId = freezed,
    Object? userCreatorId = freezed,
    Object? title = freezed,
    Object? releaseDate = freezed,
    Object? nodeId = freezed,
    Object? userByUserCreatorId = freezed,
    Object? movieReviewsByMovieId = freezed,
  }) {
    return _then(_$MoviesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      movieDirectorId: freezed == movieDirectorId
          ? _value.movieDirectorId
          : movieDirectorId // ignore: cast_nullable_to_non_nullable
              as String?,
      userCreatorId: freezed == userCreatorId
          ? _value.userCreatorId
          : userCreatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      userByUserCreatorId: freezed == userByUserCreatorId
          ? _value.userByUserCreatorId
          : userByUserCreatorId // ignore: cast_nullable_to_non_nullable
              as UserByUserCreatorId?,
      movieReviewsByMovieId: freezed == movieReviewsByMovieId
          ? _value.movieReviewsByMovieId
          : movieReviewsByMovieId // ignore: cast_nullable_to_non_nullable
              as MovieReviews?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoviesImpl implements _Movies {
  const _$MoviesImpl(
      {this.id,
      this.imgUrl,
      this.movieDirectorId,
      this.userCreatorId,
      this.title,
      this.releaseDate,
      this.nodeId,
      this.userByUserCreatorId,
      this.movieReviewsByMovieId});

  factory _$MoviesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoviesImplFromJson(json);

  @override
  final String? id;
  @override
  final String? imgUrl;
  @override
  final String? movieDirectorId;
  @override
  final String? userCreatorId;
  @override
  final String? title;
  @override
  final String? releaseDate;
  @override
  final String? nodeId;
  @override
  final UserByUserCreatorId? userByUserCreatorId;
  @override
  final MovieReviews? movieReviewsByMovieId;

  @override
  String toString() {
    return 'Movies(id: $id, imgUrl: $imgUrl, movieDirectorId: $movieDirectorId, userCreatorId: $userCreatorId, title: $title, releaseDate: $releaseDate, nodeId: $nodeId, userByUserCreatorId: $userByUserCreatorId, movieReviewsByMovieId: $movieReviewsByMovieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.movieDirectorId, movieDirectorId) ||
                other.movieDirectorId == movieDirectorId) &&
            (identical(other.userCreatorId, userCreatorId) ||
                other.userCreatorId == userCreatorId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.userByUserCreatorId, userByUserCreatorId) ||
                other.userByUserCreatorId == userByUserCreatorId) &&
            (identical(other.movieReviewsByMovieId, movieReviewsByMovieId) ||
                other.movieReviewsByMovieId == movieReviewsByMovieId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      imgUrl,
      movieDirectorId,
      userCreatorId,
      title,
      releaseDate,
      nodeId,
      userByUserCreatorId,
      movieReviewsByMovieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesImplCopyWith<_$MoviesImpl> get copyWith =>
      __$$MoviesImplCopyWithImpl<_$MoviesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoviesImplToJson(
      this,
    );
  }
}

abstract class _Movies implements Movies {
  const factory _Movies(
      {final String? id,
      final String? imgUrl,
      final String? movieDirectorId,
      final String? userCreatorId,
      final String? title,
      final String? releaseDate,
      final String? nodeId,
      final UserByUserCreatorId? userByUserCreatorId,
      final MovieReviews? movieReviewsByMovieId}) = _$MoviesImpl;

  factory _Movies.fromJson(Map<String, dynamic> json) = _$MoviesImpl.fromJson;

  @override
  String? get id;
  @override
  String? get imgUrl;
  @override
  String? get movieDirectorId;
  @override
  String? get userCreatorId;
  @override
  String? get title;
  @override
  String? get releaseDate;
  @override
  String? get nodeId;
  @override
  UserByUserCreatorId? get userByUserCreatorId;
  @override
  MovieReviews? get movieReviewsByMovieId;
  @override
  @JsonKey(ignore: true)
  _$$MoviesImplCopyWith<_$MoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserByUserCreatorId _$UserByUserCreatorIdFromJson(Map<String, dynamic> json) {
  return _UserByUserCreatorId.fromJson(json);
}

/// @nodoc
mixin _$UserByUserCreatorId {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get nodeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserByUserCreatorIdCopyWith<UserByUserCreatorId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserByUserCreatorIdCopyWith<$Res> {
  factory $UserByUserCreatorIdCopyWith(
          UserByUserCreatorId value, $Res Function(UserByUserCreatorId) then) =
      _$UserByUserCreatorIdCopyWithImpl<$Res, UserByUserCreatorId>;
  @useResult
  $Res call({String? id, String? name, String? nodeId});
}

/// @nodoc
class _$UserByUserCreatorIdCopyWithImpl<$Res, $Val extends UserByUserCreatorId>
    implements $UserByUserCreatorIdCopyWith<$Res> {
  _$UserByUserCreatorIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nodeId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserByUserCreatorIdImplCopyWith<$Res>
    implements $UserByUserCreatorIdCopyWith<$Res> {
  factory _$$UserByUserCreatorIdImplCopyWith(_$UserByUserCreatorIdImpl value,
          $Res Function(_$UserByUserCreatorIdImpl) then) =
      __$$UserByUserCreatorIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? nodeId});
}

/// @nodoc
class __$$UserByUserCreatorIdImplCopyWithImpl<$Res>
    extends _$UserByUserCreatorIdCopyWithImpl<$Res, _$UserByUserCreatorIdImpl>
    implements _$$UserByUserCreatorIdImplCopyWith<$Res> {
  __$$UserByUserCreatorIdImplCopyWithImpl(_$UserByUserCreatorIdImpl _value,
      $Res Function(_$UserByUserCreatorIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nodeId = freezed,
  }) {
    return _then(_$UserByUserCreatorIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeId: freezed == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserByUserCreatorIdImpl implements _UserByUserCreatorId {
  const _$UserByUserCreatorIdImpl({this.id, this.name, this.nodeId});

  factory _$UserByUserCreatorIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserByUserCreatorIdImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? nodeId;

  @override
  String toString() {
    return 'UserByUserCreatorId(id: $id, name: $name, nodeId: $nodeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserByUserCreatorIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, nodeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserByUserCreatorIdImplCopyWith<_$UserByUserCreatorIdImpl> get copyWith =>
      __$$UserByUserCreatorIdImplCopyWithImpl<_$UserByUserCreatorIdImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserByUserCreatorIdImplToJson(
      this,
    );
  }
}

abstract class _UserByUserCreatorId implements UserByUserCreatorId {
  const factory _UserByUserCreatorId(
      {final String? id,
      final String? name,
      final String? nodeId}) = _$UserByUserCreatorIdImpl;

  factory _UserByUserCreatorId.fromJson(Map<String, dynamic> json) =
      _$UserByUserCreatorIdImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get nodeId;
  @override
  @JsonKey(ignore: true)
  _$$UserByUserCreatorIdImplCopyWith<_$UserByUserCreatorIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieReviews _$MovieReviewsFromJson(Map<String, dynamic> json) {
  return _MovieReviews.fromJson(json);
}

/// @nodoc
mixin _$MovieReviews {
  List<Edges>? get edges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieReviewsCopyWith<MovieReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieReviewsCopyWith<$Res> {
  factory $MovieReviewsCopyWith(
          MovieReviews value, $Res Function(MovieReviews) then) =
      _$MovieReviewsCopyWithImpl<$Res, MovieReviews>;
  @useResult
  $Res call({List<Edges>? edges});
}

/// @nodoc
class _$MovieReviewsCopyWithImpl<$Res, $Val extends MovieReviews>
    implements $MovieReviewsCopyWith<$Res> {
  _$MovieReviewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_value.copyWith(
      edges: freezed == edges
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Edges>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieReviewsImplCopyWith<$Res>
    implements $MovieReviewsCopyWith<$Res> {
  factory _$$MovieReviewsImplCopyWith(
          _$MovieReviewsImpl value, $Res Function(_$MovieReviewsImpl) then) =
      __$$MovieReviewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Edges>? edges});
}

/// @nodoc
class __$$MovieReviewsImplCopyWithImpl<$Res>
    extends _$MovieReviewsCopyWithImpl<$Res, _$MovieReviewsImpl>
    implements _$$MovieReviewsImplCopyWith<$Res> {
  __$$MovieReviewsImplCopyWithImpl(
      _$MovieReviewsImpl _value, $Res Function(_$MovieReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_$MovieReviewsImpl(
      edges: freezed == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Edges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieReviewsImpl implements _MovieReviews {
  const _$MovieReviewsImpl({final List<Edges>? edges}) : _edges = edges;

  factory _$MovieReviewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieReviewsImplFromJson(json);

  final List<Edges>? _edges;
  @override
  List<Edges>? get edges {
    final value = _edges;
    if (value == null) return null;
    if (_edges is EqualUnmodifiableListView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieReviews(edges: $edges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieReviewsImpl &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_edges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieReviewsImplCopyWith<_$MovieReviewsImpl> get copyWith =>
      __$$MovieReviewsImplCopyWithImpl<_$MovieReviewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieReviewsImplToJson(
      this,
    );
  }
}

abstract class _MovieReviews implements MovieReviews {
  const factory _MovieReviews({final List<Edges>? edges}) = _$MovieReviewsImpl;

  factory _MovieReviews.fromJson(Map<String, dynamic> json) =
      _$MovieReviewsImpl.fromJson;

  @override
  List<Edges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$$MovieReviewsImplCopyWith<_$MovieReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Edges _$EdgesFromJson(Map<String, dynamic> json) {
  return _Edges.fromJson(json);
}

/// @nodoc
mixin _$Edges {
  Nodes? get node => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EdgesCopyWith<Edges> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdgesCopyWith<$Res> {
  factory $EdgesCopyWith(Edges value, $Res Function(Edges) then) =
      _$EdgesCopyWithImpl<$Res, Edges>;
  @useResult
  $Res call({Nodes? node});

  $NodesCopyWith<$Res>? get node;
}

/// @nodoc
class _$EdgesCopyWithImpl<$Res, $Val extends Edges>
    implements $EdgesCopyWith<$Res> {
  _$EdgesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_value.copyWith(
      node: freezed == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as Nodes?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NodesCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $NodesCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EdgesImplCopyWith<$Res> implements $EdgesCopyWith<$Res> {
  factory _$$EdgesImplCopyWith(
          _$EdgesImpl value, $Res Function(_$EdgesImpl) then) =
      __$$EdgesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Nodes? node});

  @override
  $NodesCopyWith<$Res>? get node;
}

/// @nodoc
class __$$EdgesImplCopyWithImpl<$Res>
    extends _$EdgesCopyWithImpl<$Res, _$EdgesImpl>
    implements _$$EdgesImplCopyWith<$Res> {
  __$$EdgesImplCopyWithImpl(
      _$EdgesImpl _value, $Res Function(_$EdgesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_$EdgesImpl(
      node: freezed == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as Nodes?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EdgesImpl implements _Edges {
  const _$EdgesImpl({this.node});

  factory _$EdgesImpl.fromJson(Map<String, dynamic> json) =>
      _$$EdgesImplFromJson(json);

  @override
  final Nodes? node;

  @override
  String toString() {
    return 'Edges(node: $node)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EdgesImpl &&
            (identical(other.node, node) || other.node == node));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, node);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EdgesImplCopyWith<_$EdgesImpl> get copyWith =>
      __$$EdgesImplCopyWithImpl<_$EdgesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EdgesImplToJson(
      this,
    );
  }
}

abstract class _Edges implements Edges {
  const factory _Edges({final Nodes? node}) = _$EdgesImpl;

  factory _Edges.fromJson(Map<String, dynamic> json) = _$EdgesImpl.fromJson;

  @override
  Nodes? get node;
  @override
  @JsonKey(ignore: true)
  _$$EdgesImplCopyWith<_$EdgesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Nodes _$NodesFromJson(Map<String, dynamic> json) {
  return _Nodes.fromJson(json);
}

/// @nodoc
mixin _$Nodes {
  String? get id => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NodesCopyWith<Nodes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodesCopyWith<$Res> {
  factory $NodesCopyWith(Nodes value, $Res Function(Nodes) then) =
      _$NodesCopyWithImpl<$Res, Nodes>;
  @useResult
  $Res call({String? id, int? rating, String? title, String? body});
}

/// @nodoc
class _$NodesCopyWithImpl<$Res, $Val extends Nodes>
    implements $NodesCopyWith<$Res> {
  _$NodesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NodesImplCopyWith<$Res> implements $NodesCopyWith<$Res> {
  factory _$$NodesImplCopyWith(
          _$NodesImpl value, $Res Function(_$NodesImpl) then) =
      __$$NodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, int? rating, String? title, String? body});
}

/// @nodoc
class __$$NodesImplCopyWithImpl<$Res>
    extends _$NodesCopyWithImpl<$Res, _$NodesImpl>
    implements _$$NodesImplCopyWith<$Res> {
  __$$NodesImplCopyWithImpl(
      _$NodesImpl _value, $Res Function(_$NodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$NodesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NodesImpl implements _Nodes {
  const _$NodesImpl({this.id, this.rating, this.title, this.body});

  factory _$NodesImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodesImplFromJson(json);

  @override
  final String? id;
  @override
  final int? rating;
  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString() {
    return 'Nodes(id: $id, rating: $rating, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, rating, title, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NodesImplCopyWith<_$NodesImpl> get copyWith =>
      __$$NodesImplCopyWithImpl<_$NodesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NodesImplToJson(
      this,
    );
  }
}

abstract class _Nodes implements Nodes {
  const factory _Nodes(
      {final String? id,
      final int? rating,
      final String? title,
      final String? body}) = _$NodesImpl;

  factory _Nodes.fromJson(Map<String, dynamic> json) = _$NodesImpl.fromJson;

  @override
  String? get id;
  @override
  int? get rating;
  @override
  String? get title;
  @override
  String? get body;
  @override
  @JsonKey(ignore: true)
  _$$NodesImplCopyWith<_$NodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
