// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_factory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuthFactory _$AuthFactoryFromJson(Map<String, dynamic> json) {
  return _AuthFactory.fromJson(json);
}

/// @nodoc
mixin _$AuthFactory {
  String get token => throw _privateConstructorUsedError;
  UserFactory get user => throw _privateConstructorUsedError;

  /// Serializes this AuthFactory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthFactory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthFactoryCopyWith<AuthFactory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFactoryCopyWith<$Res> {
  factory $AuthFactoryCopyWith(
    AuthFactory value,
    $Res Function(AuthFactory) then,
  ) = _$AuthFactoryCopyWithImpl<$Res, AuthFactory>;
  @useResult
  $Res call({String token, UserFactory user});

  $UserFactoryCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthFactoryCopyWithImpl<$Res, $Val extends AuthFactory>
    implements $AuthFactoryCopyWith<$Res> {
  _$AuthFactoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthFactory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? user = null}) {
    return _then(
      _value.copyWith(
            token:
                null == token
                    ? _value.token
                    : token // ignore: cast_nullable_to_non_nullable
                        as String,
            user:
                null == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as UserFactory,
          )
          as $Val,
    );
  }

  /// Create a copy of AuthFactory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserFactoryCopyWith<$Res> get user {
    return $UserFactoryCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthFactoryImplCopyWith<$Res>
    implements $AuthFactoryCopyWith<$Res> {
  factory _$$AuthFactoryImplCopyWith(
    _$AuthFactoryImpl value,
    $Res Function(_$AuthFactoryImpl) then,
  ) = __$$AuthFactoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, UserFactory user});

  @override
  $UserFactoryCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthFactoryImplCopyWithImpl<$Res>
    extends _$AuthFactoryCopyWithImpl<$Res, _$AuthFactoryImpl>
    implements _$$AuthFactoryImplCopyWith<$Res> {
  __$$AuthFactoryImplCopyWithImpl(
    _$AuthFactoryImpl _value,
    $Res Function(_$AuthFactoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthFactory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? token = null, Object? user = null}) {
    return _then(
      _$AuthFactoryImpl(
        token:
            null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                    as String,
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as UserFactory,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthFactoryImpl implements _AuthFactory {
  _$AuthFactoryImpl({required this.token, required this.user});

  factory _$AuthFactoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthFactoryImplFromJson(json);

  @override
  final String token;
  @override
  final UserFactory user;

  @override
  String toString() {
    return 'AuthFactory(token: $token, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFactoryImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, user);

  /// Create a copy of AuthFactory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFactoryImplCopyWith<_$AuthFactoryImpl> get copyWith =>
      __$$AuthFactoryImplCopyWithImpl<_$AuthFactoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthFactoryImplToJson(this);
  }
}

abstract class _AuthFactory implements AuthFactory {
  factory _AuthFactory({
    required final String token,
    required final UserFactory user,
  }) = _$AuthFactoryImpl;

  factory _AuthFactory.fromJson(Map<String, dynamic> json) =
      _$AuthFactoryImpl.fromJson;

  @override
  String get token;
  @override
  UserFactory get user;

  /// Create a copy of AuthFactory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFactoryImplCopyWith<_$AuthFactoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
