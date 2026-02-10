// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DocumentAdapter extends TypeAdapter<Document> {
  @override
  final typeId = 2;

  @override
  Document read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Document(
      id: (fields[0] as num).toInt(),
      name: fields[1] == null ? '' : fields[1] as String,
      url: fields[2] == null ? '' : fields[2] as String,
      path: fields[3] == null ? '' : fields[3] as String,
      fileLocalState: fields[4] == null ? 0 : (fields[4] as num).toInt(),
      fileUploadPath: fields[5] == null ? '' : fields[5] as String,
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

_Document _$DocumentFromJson(Map<String, dynamic> json) => _Document(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? "",
      url: json['url'] as String? ?? "",
      path: json['path'] as String? ?? "",
      fileLocalState: (json['fileLocalState'] as num?)?.toInt() ?? 0,
      fileUploadPath: json['fileUploadPath'] as String? ?? "",
    );

Map<String, dynamic> _$DocumentToJson(_Document instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'path': instance.path,
      'fileLocalState': instance.fileLocalState,
      'fileUploadPath': instance.fileUploadPath,
    };
