// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$_$_UserModelFromJson(Map<String, dynamic> json) {
  return _$_UserModel(
    name: json['name'] as String,
    lastName: json['lastName'] as String,
    dni: json['dni'] as String,
    birthDate: DateTime.parse(json['birthDate'] as String),
  );
}

Map<String, dynamic> _$_$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastName': instance.lastName,
      'dni': instance.dni,
      'birthDate': instance.birthDate.toIso8601String(),
    };
