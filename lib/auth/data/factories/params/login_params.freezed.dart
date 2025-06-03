// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginParams _$LoginParamsFromJson(Map<String, dynamic> json) {
  return _LoginParams.fromJson(json);
}

/// @nodoc
mixin _$LoginParams {
  String get username => throw _privateConstructorUsedError;
  String get pass => throw _privateConstructorUsedError;

  /// Serializes this LoginParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginParamsCopyWith<LoginParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginParamsCopyWith<$Res> {
  factory $LoginParamsCopyWith(
    LoginParams value,
    $Res Function(LoginParams) then,
  ) = _$LoginParamsCopyWithImpl<$Res, LoginParams>;
  @useResult
  $Res call({String username, String pass});
}

/// @nodoc
class _$LoginParamsCopyWithImpl<$Res, $Val extends LoginParams>
    implements $LoginParamsCopyWith<$Res> {
  _$LoginParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? username = null, Object? pass = null}) {
    return _then(
      _value.copyWith(
            username:
                null == username
                    ? _value.username
                    : username // ignore: cast_nullable_to_non_nullable
                        as String,
            pass:
                null == pass
                    ? _value.pass
                    : pass // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginParamsImplCopyWith<$Res>
    implements $LoginParamsCopyWith<$Res> {
  factory _$$LoginParamsImplCopyWith(
    _$LoginParamsImpl value,
    $Res Function(_$LoginParamsImpl) then,
  ) = __$$LoginParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String pass});
}

/// @nodoc
class __$$LoginParamsImplCopyWithImpl<$Res>
    extends _$LoginParamsCopyWithImpl<$Res, _$LoginParamsImpl>
    implements _$$LoginParamsImplCopyWith<$Res> {
  __$$LoginParamsImplCopyWithImpl(
    _$LoginParamsImpl _value,
    $Res Function(_$LoginParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? username = null, Object? pass = null}) {
    return _then(
      _$LoginParamsImpl(
        username:
            null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                    as String,
        pass:
            null == pass
                ? _value.pass
                : pass // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginParamsImpl implements _LoginParams {
  _$LoginParamsImpl({required this.username, required this.pass});

  factory _$LoginParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginParamsImplFromJson(json);

  @override
  final String username;
  @override
  final String pass;

  @override
  String toString() {
    return 'LoginParams(username: $username, pass: $pass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginParamsImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.pass, pass) || other.pass == pass));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, pass);

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginParamsImplCopyWith<_$LoginParamsImpl> get copyWith =>
      __$$LoginParamsImplCopyWithImpl<_$LoginParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginParamsImplToJson(this);
  }
}

abstract class _LoginParams implements LoginParams {
  factory _LoginParams({
    required final String username,
    required final String pass,
  }) = _$LoginParamsImpl;

  factory _LoginParams.fromJson(Map<String, dynamic> json) =
      _$LoginParamsImpl.fromJson;

  @override
  String get username;
  @override
  String get pass;

  /// Create a copy of LoginParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginParamsImplCopyWith<_$LoginParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
