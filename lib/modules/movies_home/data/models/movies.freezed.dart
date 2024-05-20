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
      UserByUserCreatorId? userByUserCreatorId});

  $UserByUserCreatorIdCopyWith<$Res>? get userByUserCreatorId;
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
      UserByUserCreatorId? userByUserCreatorId});

  @override
  $UserByUserCreatorIdCopyWith<$Res>? get userByUserCreatorId;
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
      this.userByUserCreatorId});

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
  String toString() {
    return 'Movies(id: $id, imgUrl: $imgUrl, movieDirectorId: $movieDirectorId, userCreatorId: $userCreatorId, title: $title, releaseDate: $releaseDate, nodeId: $nodeId, userByUserCreatorId: $userByUserCreatorId)';
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
                other.userByUserCreatorId == userByUserCreatorId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imgUrl, movieDirectorId,
      userCreatorId, title, releaseDate, nodeId, userByUserCreatorId);

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
      final UserByUserCreatorId? userByUserCreatorId}) = _$MoviesImpl;

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
