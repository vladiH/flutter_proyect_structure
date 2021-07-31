// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_document.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserDocumentAdapter extends TypeAdapter<UserDocument> {
  @override
  final int typeId = 0;

  @override
  UserDocument read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserDocument(
      name: fields[0] as String,
      lastName: fields[1] as String,
      dni: fields[2] as String,
      birthDate: fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, UserDocument obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.lastName)
      ..writeByte(2)
      ..write(obj.dni)
      ..writeByte(3)
      ..write(obj.birthDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDocumentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
