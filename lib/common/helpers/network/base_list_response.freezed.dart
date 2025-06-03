// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BaseListResponse<T> _$BaseListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object?) fromJsonT,
) {
  return _BaseListResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseListResponse<T> {
  int get statusCode => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  /// Serializes this BaseListResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseListResponseCopyWith<T, BaseListResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseListResponseCopyWith<T, $Res> {
  factory $BaseListResponseCopyWith(
    BaseListResponse<T> value,
    $Res Function(BaseListResponse<T>) then,
  ) = _$BaseListResponseCopyWithImpl<T, $Res, BaseListResponse<T>>;
  @useResult
  $Res call({
    int statusCode,
    List<T> data,
    String message,
    String timestamp,
    int count,
    String path,
  });
}

/// @nodoc
class _$BaseListResponseCopyWithImpl<T, $Res, $Val extends BaseListResponse<T>>
    implements $BaseListResponseCopyWith<T, $Res> {
  _$BaseListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? data = null,
    Object? message = null,
    Object? timestamp = null,
    Object? count = null,
    Object? path = null,
  }) {
    return _then(
      _value.copyWith(
            statusCode:
                null == statusCode
                    ? _value.statusCode
                    : statusCode // ignore: cast_nullable_to_non_nullable
                        as int,
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<T>,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            timestamp:
                null == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as String,
            count:
                null == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as int,
            path:
                null == path
                    ? _value.path
                    : path // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BaseListResponseImplCopyWith<T, $Res>
    implements $BaseListResponseCopyWith<T, $Res> {
  factory _$$BaseListResponseImplCopyWith(
    _$BaseListResponseImpl<T> value,
    $Res Function(_$BaseListResponseImpl<T>) then,
  ) = __$$BaseListResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({
    int statusCode,
    List<T> data,
    String message,
    String timestamp,
    int count,
    String path,
  });
}

/// @nodoc
class __$$BaseListResponseImplCopyWithImpl<T, $Res>
    extends _$BaseListResponseCopyWithImpl<T, $Res, _$BaseListResponseImpl<T>>
    implements _$$BaseListResponseImplCopyWith<T, $Res> {
  __$$BaseListResponseImplCopyWithImpl(
    _$BaseListResponseImpl<T> _value,
    $Res Function(_$BaseListResponseImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of BaseListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? data = null,
    Object? message = null,
    Object? timestamp = null,
    Object? count = null,
    Object? path = null,
  }) {
    return _then(
      _$BaseListResponseImpl<T>(
        statusCode:
            null == statusCode
                ? _value.statusCode
                : statusCode // ignore: cast_nullable_to_non_nullable
                    as int,
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<T>,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        timestamp:
            null == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as String,
        count:
            null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int,
        path:
            null == path
                ? _value.path
                : path // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BaseListResponseImpl<T> implements _BaseListResponse<T> {
  _$BaseListResponseImpl({
    required this.statusCode,
    required final List<T> data,
    required this.message,
    required this.timestamp,
    required this.count,
    required this.path,
  }) : _data = data;

  factory _$BaseListResponseImpl.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$$BaseListResponseImplFromJson(json, fromJsonT);

  @override
  final int statusCode;
  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String message;
  @override
  final String timestamp;
  @override
  final int count;
  @override
  final String path;

  @override
  String toString() {
    return 'BaseListResponse<$T>(statusCode: $statusCode, data: $data, message: $message, timestamp: $timestamp, count: $count, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseListResponseImpl<T> &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    statusCode,
    const DeepCollectionEquality().hash(_data),
    message,
    timestamp,
    count,
    path,
  );

  /// Create a copy of BaseListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseListResponseImplCopyWith<T, _$BaseListResponseImpl<T>> get copyWith =>
      __$$BaseListResponseImplCopyWithImpl<T, _$BaseListResponseImpl<T>>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseListResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseListResponse<T> implements BaseListResponse<T> {
  factory _BaseListResponse({
    required final int statusCode,
    required final List<T> data,
    required final String message,
    required final String timestamp,
    required final int count,
    required final String path,
  }) = _$BaseListResponseImpl<T>;

  factory _BaseListResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) = _$BaseListResponseImpl<T>.fromJson;

  @override
  int get statusCode;
  @override
  List<T> get data;
  @override
  String get message;
  @override
  String get timestamp;
  @override
  int get count;
  @override
  String get path;

  /// Create a copy of BaseListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseListResponseImplCopyWith<T, _$BaseListResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
