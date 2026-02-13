// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CaseTaskAdapter extends TypeAdapter<CaseTask> {
  @override
  final typeId = 1;

  @override
  CaseTask read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CaseTask(
      id: (fields[0] as num).toInt(),
      name: fields[1] == null ? '' : fields[1] as String,
      description: fields[2] == null ? '' : fields[2] as String,
      documents: fields[3] == null ? [] : (fields[3] as List).cast<Document>(),
    );
  }

  @override
  void write(BinaryWriter writer, CaseTask obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.documents);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CaseTaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CaseTask _$CaseTaskFromJson(Map<String, dynamic> json) => _CaseTask(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CaseTaskToJson(_CaseTask instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'documents': instance.documents,
    };
