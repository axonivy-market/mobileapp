// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DocumentAdapter extends TypeAdapter<Document> {
  @override
  final int typeId = 2;

  @override
  Document read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Document(
      id: fields[0] as int,
      name: fields[1] as String,
      url: fields[2] as String,
      path: fields[3] as String,
      fileLocalState: fields[4] as int,
      fileUploadPath: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Document obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.path)
      ..writeByte(4)
      ..write(obj.fileLocalState)
      ..writeByte(5)
      ..write(obj.fileUploadPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DocumentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      id: json['id'] as int,
      name: json['name'] as String? ?? "",
      url: json['url'] as String? ?? "",
      path: json['path'] as String? ?? "",
      fileLocalState: json['fileLocalState'] as int? ?? 0,
      fileUploadPath: json['fileUploadPath'] as String? ?? "",
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'path': instance.path,
      'fileLocalState': instance.fileLocalState,
      'fileUploadPath': instance.fileUploadPath,
    };
