// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEntityTearOff {
  const _$UserEntityTearOff();

  _UserEntity call(
      {required String name,
      required String lastName,
      required String dni,
      required DateTime birthDate}) {
    return _UserEntity(
      name: name,
      lastName: lastName,
      dni: dni,
      birthDate: birthDate,
    );
  }
}

/// @nodoc
const $UserEntity = _$UserEntityTearOff();

/// @nodoc
mixin _$UserEntity {
  String get name => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get dni => throw _privateConstructorUsedError;
  DateTime get birthDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res>;
  $Res call({String name, String lastName, String dni, DateTime birthDate});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res> implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  final UserEntity _value;
  // ignore: unused_field
  final $Res Function(UserEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? lastName = freezed,
    Object? dni = freezed,
    Object? birthDate = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dni: dni == freezed
          ? _value.dni
          : dni // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$UserEntityCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$UserEntityCopyWith(
          _UserEntity value, $Res Function(_UserEntity) then) =
      __$UserEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, String lastName, String dni, DateTime birthDate});
}

/// @nodoc
class __$UserEntityCopyWithImpl<$Res> extends _$UserEntityCopyWithImpl<$Res>
    implements _$UserEntityCopyWith<$Res> {
  __$UserEntityCopyWithImpl(
      _UserEntity _value, $Res Function(_UserEntity) _then)
      : super(_value, (v) => _then(v as _UserEntity));

  @override
  _UserEntity get _value => super._value as _UserEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? lastName = freezed,
    Object? dni = freezed,
    Object? birthDate = freezed,
  }) {
    return _then(_UserEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dni: dni == freezed
          ? _value.dni
          : dni // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_UserEntity implements _UserEntity {
  const _$_UserEntity(
      {required this.name,
      required this.lastName,
      required this.dni,
      required this.birthDate});

  @override
  final String name;
  @override
  final String lastName;
  @override
  final String dni;
  @override
  final DateTime birthDate;

  @override
  String toString() {
    return 'UserEntity(name: $name, lastName: $lastName, dni: $dni, birthDate: $birthDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.dni, dni) ||
                const DeepCollectionEquality().equals(other.dni, dni)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(dni) ^
      const DeepCollectionEquality().hash(birthDate);

  @JsonKey(ignore: true)
  @override
  _$UserEntityCopyWith<_UserEntity> get copyWith =>
      __$UserEntityCopyWithImpl<_UserEntity>(this, _$identity);
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      {required String name,
      required String lastName,
      required String dni,
      required DateTime birthDate}) = _$_UserEntity;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  String get dni => throw _privateConstructorUsedError;
  @override
  DateTime get birthDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserEntityCopyWith<_UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
