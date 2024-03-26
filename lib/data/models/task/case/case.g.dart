// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CaseTaskImplAdapter extends TypeAdapter<_$CaseTaskImpl> {
  @override
  final int typeId = 2;

  @override
  _$CaseTaskImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CaseTaskImpl(
      id: fields[0] as int,
      name: fields[1] as String,
      description: fields[2] as String,
      documents: (fields[3] as List).cast<Document>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$CaseTaskImpl obj) {
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
      other is CaseTaskImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaseTaskImpl _$$CaseTaskImplFromJson(Map<String, dynamic> json) =>
    _$CaseTaskImpl(
      id: json['id'] as int,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CaseTaskImplToJson(_$CaseTaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'documents': instance.documents,
    };
