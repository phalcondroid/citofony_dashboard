// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_factory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserFactory _$UserFactoryFromJson(Map<String, dynamic> json) {
  return _UserFactory.fromJson(json);
}

/// @nodoc
mixin _$UserFactory {
  @JsonKey(name: "_id")
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  @JsonKey(name: "number")
  String get phone => throw _privateConstructorUsedError;
  List<RoleFactory> get role => throw _privateConstructorUsedError;

  /// Serializes this UserFactory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserFactory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserFactoryCopyWith<UserFactory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFactoryCopyWith<$Res> {
  factory $UserFactoryCopyWith(
    UserFactory value,
    $Res Function(UserFactory) then,
  ) = _$UserFactoryCopyWithImpl<$Res, UserFactory>;
  @useResult
  $Res call({
    @JsonKey(name: "_id") String id,
    String username,
    String name,
    String email,
    String lastname,
    @JsonKey(name: "number") String phone,
    List<RoleFactory> role,
  });
}

/// @nodoc
class _$UserFactoryCopyWithImpl<$Res, $Val extends UserFactory>
    implements $UserFactoryCopyWith<$Res> {
  _$UserFactoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserFactory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? name = null,
    Object? email = null,
    Object? lastname = null,
    Object? phone = null,
    Object? role = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            username:
                null == username
                    ? _value.username
                    : username // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                null == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String,
            lastname:
                null == lastname
                    ? _value.lastname
                    : lastname // ignore: cast_nullable_to_non_nullable
                        as String,
            phone:
                null == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String,
            role:
                null == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as List<RoleFactory>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserFactoryImplCopyWith<$Res>
    implements $UserFactoryCopyWith<$Res> {
  factory _$$UserFactoryImplCopyWith(
    _$UserFactoryImpl value,
    $Res Function(_$UserFactoryImpl) then,
  ) = __$$UserFactoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "_id") String id,
    String username,
    String name,
    String email,
    String lastname,
    @JsonKey(name: "number") String phone,
    List<RoleFactory> role,
  });
}

/// @nodoc
class __$$UserFactoryImplCopyWithImpl<$Res>
    extends _$UserFactoryCopyWithImpl<$Res, _$UserFactoryImpl>
    implements _$$UserFactoryImplCopyWith<$Res> {
  __$$UserFactoryImplCopyWithImpl(
    _$UserFactoryImpl _value,
    $Res Function(_$UserFactoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserFactory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? name = null,
    Object? email = null,
    Object? lastname = null,
    Object? phone = null,
    Object? role = null,
  }) {
    return _then(
      _$UserFactoryImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        username:
            null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        lastname:
            null == lastname
                ? _value.lastname
                : lastname // ignore: cast_nullable_to_non_nullable
                    as String,
        phone:
            null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String,
        role:
            null == role
                ? _value._role
                : role // ignore: cast_nullable_to_non_nullable
                    as List<RoleFactory>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFactoryImpl implements _UserFactory {
  _$UserFactoryImpl({
    @JsonKey(name: "_id") required this.id,
    required this.username,
    required this.name,
    required this.email,
    required this.lastname,
    @JsonKey(name: "number") required this.phone,
    required final List<RoleFactory> role,
  }) : _role = role;

  factory _$UserFactoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFactoryImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String id;
  @override
  final String username;
  @override
  final String name;
  @override
  final String email;
  @override
  final String lastname;
  @override
  @JsonKey(name: "number")
  final String phone;
  final List<RoleFactory> _role;
  @override
  List<RoleFactory> get role {
    if (_role is EqualUnmodifiableListView) return _role;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_role);
  }

  @override
  String toString() {
    return 'UserFactory(id: $id, username: $username, name: $name, email: $email, lastname: $lastname, phone: $phone, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFactoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            const DeepCollectionEquality().equals(other._role, _role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    username,
    name,
    email,
    lastname,
    phone,
    const DeepCollectionEquality().hash(_role),
  );

  /// Create a copy of UserFactory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFactoryImplCopyWith<_$UserFactoryImpl> get copyWith =>
      __$$UserFactoryImplCopyWithImpl<_$UserFactoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFactoryImplToJson(this);
  }
}

abstract class _UserFactory implements UserFactory {
  factory _UserFactory({
    @JsonKey(name: "_id") required final String id,
    required final String username,
    required final String name,
    required final String email,
    required final String lastname,
    @JsonKey(name: "number") required final String phone,
    required final List<RoleFactory> role,
  }) = _$UserFactoryImpl;

  factory _UserFactory.fromJson(Map<String, dynamic> json) =
      _$UserFactoryImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String get id;
  @override
  String get username;
  @override
  String get name;
  @override
  String get email;
  @override
  String get lastname;
  @override
  @JsonKey(name: "number")
  String get phone;
  @override
  List<RoleFactory> get role;

  /// Create a copy of UserFactory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserFactoryImplCopyWith<_$UserFactoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
