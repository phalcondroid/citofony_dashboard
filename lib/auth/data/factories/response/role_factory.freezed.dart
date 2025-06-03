// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_factory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RoleFactory _$RoleFactoryFromJson(Map<String, dynamic> json) {
  return _RoleFactory.fromJson(json);
}

/// @nodoc
mixin _$RoleFactory {
  String get name => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;

  /// Serializes this RoleFactory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoleFactory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoleFactoryCopyWith<RoleFactory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleFactoryCopyWith<$Res> {
  factory $RoleFactoryCopyWith(
    RoleFactory value,
    $Res Function(RoleFactory) then,
  ) = _$RoleFactoryCopyWithImpl<$Res, RoleFactory>;
  @useResult
  $Res call({String name, int type});
}

/// @nodoc
class _$RoleFactoryCopyWithImpl<$Res, $Val extends RoleFactory>
    implements $RoleFactoryCopyWith<$Res> {
  _$RoleFactoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoleFactory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? type = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RoleFactoryImplCopyWith<$Res>
    implements $RoleFactoryCopyWith<$Res> {
  factory _$$RoleFactoryImplCopyWith(
    _$RoleFactoryImpl value,
    $Res Function(_$RoleFactoryImpl) then,
  ) = __$$RoleFactoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int type});
}

/// @nodoc
class __$$RoleFactoryImplCopyWithImpl<$Res>
    extends _$RoleFactoryCopyWithImpl<$Res, _$RoleFactoryImpl>
    implements _$$RoleFactoryImplCopyWith<$Res> {
  __$$RoleFactoryImplCopyWithImpl(
    _$RoleFactoryImpl _value,
    $Res Function(_$RoleFactoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoleFactory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? type = null}) {
    return _then(
      _$RoleFactoryImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleFactoryImpl implements _RoleFactory {
  _$RoleFactoryImpl({required this.name, required this.type});

  factory _$RoleFactoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleFactoryImplFromJson(json);

  @override
  final String name;
  @override
  final int type;

  @override
  String toString() {
    return 'RoleFactory(name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleFactoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  /// Create a copy of RoleFactory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleFactoryImplCopyWith<_$RoleFactoryImpl> get copyWith =>
      __$$RoleFactoryImplCopyWithImpl<_$RoleFactoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleFactoryImplToJson(this);
  }
}

abstract class _RoleFactory implements RoleFactory {
  factory _RoleFactory({required final String name, required final int type}) =
      _$RoleFactoryImpl;

  factory _RoleFactory.fromJson(Map<String, dynamic> json) =
      _$RoleFactoryImpl.fromJson;

  @override
  String get name;
  @override
  int get type;

  /// Create a copy of RoleFactory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoleFactoryImplCopyWith<_$RoleFactoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
