// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_single_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BaseSingleResponse<T> _$BaseSingleResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object?) fromJsonT,
) {
  return _BaseSingleResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseSingleResponse<T> {
  int get statusCode => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  /// Serializes this BaseSingleResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseSingleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseSingleResponseCopyWith<T, BaseSingleResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseSingleResponseCopyWith<T, $Res> {
  factory $BaseSingleResponseCopyWith(
    BaseSingleResponse<T> value,
    $Res Function(BaseSingleResponse<T>) then,
  ) = _$BaseSingleResponseCopyWithImpl<T, $Res, BaseSingleResponse<T>>;
  @useResult
  $Res call({
    int statusCode,
    T data,
    String message,
    String timestamp,
    String path,
  });
}

/// @nodoc
class _$BaseSingleResponseCopyWithImpl<
  T,
  $Res,
  $Val extends BaseSingleResponse<T>
>
    implements $BaseSingleResponseCopyWith<T, $Res> {
  _$BaseSingleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseSingleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? data = freezed,
    Object? message = null,
    Object? timestamp = null,
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
                freezed == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as T,
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
abstract class _$$BaseSingleResponseImplCopyWith<T, $Res>
    implements $BaseSingleResponseCopyWith<T, $Res> {
  factory _$$BaseSingleResponseImplCopyWith(
    _$BaseSingleResponseImpl<T> value,
    $Res Function(_$BaseSingleResponseImpl<T>) then,
  ) = __$$BaseSingleResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({
    int statusCode,
    T data,
    String message,
    String timestamp,
    String path,
  });
}

/// @nodoc
class __$$BaseSingleResponseImplCopyWithImpl<T, $Res>
    extends
        _$BaseSingleResponseCopyWithImpl<T, $Res, _$BaseSingleResponseImpl<T>>
    implements _$$BaseSingleResponseImplCopyWith<T, $Res> {
  __$$BaseSingleResponseImplCopyWithImpl(
    _$BaseSingleResponseImpl<T> _value,
    $Res Function(_$BaseSingleResponseImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of BaseSingleResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? data = freezed,
    Object? message = null,
    Object? timestamp = null,
    Object? path = null,
  }) {
    return _then(
      _$BaseSingleResponseImpl<T>(
        statusCode:
            null == statusCode
                ? _value.statusCode
                : statusCode // ignore: cast_nullable_to_non_nullable
                    as int,
        data:
            freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as T,
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
class _$BaseSingleResponseImpl<T> implements _BaseSingleResponse<T> {
  const _$BaseSingleResponseImpl({
    required this.statusCode,
    required this.data,
    required this.message,
    required this.timestamp,
    required this.path,
  });

  factory _$BaseSingleResponseImpl.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$$BaseSingleResponseImplFromJson(json, fromJsonT);

  @override
  final int statusCode;
  @override
  final T data;
  @override
  final String message;
  @override
  final String timestamp;
  @override
  final String path;

  @override
  String toString() {
    return 'BaseSingleResponse<$T>(statusCode: $statusCode, data: $data, message: $message, timestamp: $timestamp, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseSingleResponseImpl<T> &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    statusCode,
    const DeepCollectionEquality().hash(data),
    message,
    timestamp,
    path,
  );

  /// Create a copy of BaseSingleResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseSingleResponseImplCopyWith<T, _$BaseSingleResponseImpl<T>>
  get copyWith =>
      __$$BaseSingleResponseImplCopyWithImpl<T, _$BaseSingleResponseImpl<T>>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseSingleResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseSingleResponse<T> implements BaseSingleResponse<T> {
  const factory _BaseSingleResponse({
    required final int statusCode,
    required final T data,
    required final String message,
    required final String timestamp,
    required final String path,
  }) = _$BaseSingleResponseImpl<T>;

  factory _BaseSingleResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) = _$BaseSingleResponseImpl<T>.fromJson;

  @override
  int get statusCode;
  @override
  T get data;
  @override
  String get message;
  @override
  String get timestamp;
  @override
  String get path;

  /// Create a copy of BaseSingleResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseSingleResponseImplCopyWith<T, _$BaseSingleResponseImpl<T>>
  get copyWith => throw _privateConstructorUsedError;
}
