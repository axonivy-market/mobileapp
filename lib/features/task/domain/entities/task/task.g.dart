// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskIvyAdapter extends TypeAdapter<TaskIvy> {
  @override
  final typeId = 0;

  @override
  TaskIvy read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskIvy(
      id: (fields[0] as num).toInt(),
      name: fields[1] as String,
      description: fields[2] as String,
      fullRequestPath: fields[3] as String,
      offline: fields[4] as bool,
      startTimeStamp: fields[5] as DateTime,
      expiryTimeStamp: fields[6] as DateTime?,
      priority: (fields[7] as num).toInt(),
      state: (fields[8] as num).toInt(),
      activatorName: fields[9] as String,
      category: fields[10] as String,
      caseTask: fields[11] as CaseTask?,
      doneTaskFormDataSerializedOffline:
          (fields[12] as Map?)?.cast<String, dynamic>(),
      submitUrlOffline: fields[13] as String?,
      formHTMLPageOffline: fields[14] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TaskIvy obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.fullRequestPath)
      ..writeByte(4)
      ..write(obj.offline)
      ..writeByte(5)
      ..write(obj.startTimeStamp)
      ..writeByte(6)
      ..write(obj.expiryTimeStamp)
      ..writeByte(7)
      ..write(obj.priority)
      ..writeByte(8)
      ..write(obj.state)
      ..writeByte(9)
      ..write(obj.activatorName)
      ..writeByte(10)
      ..write(obj.category)
      ..writeByte(11)
      ..write(obj.caseTask)
      ..writeByte(12)
      ..write(obj.doneTaskFormDataSerializedOffline)
      ..writeByte(13)
      ..write(obj.submitUrlOffline)
      ..writeByte(14)
      ..write(obj.formHTMLPageOffline);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskIvyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskIvy _$TaskIvyFromJson(Map<String, dynamic> json) => _TaskIvy(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      fullRequestPath: json['fullRequestPath'] as String,
      offline: json['offline'] as bool,
      startTimeStamp: DateTime.parse(json['startTimeStamp'] as String),
      expiryTimeStamp: json['expiryTimeStamp'] == null
          ? null
          : DateTime.parse(json['expiryTimeStamp'] as String),
      priority: (json['priority'] as num).toInt(),
      state: (json['state'] as num).toInt(),
      activatorName: json['activatorName'] as String,
      category: json['category'] as String,
      caseTask: json['caseTask'] == null
          ? null
          : CaseTask.fromJson(json['caseTask'] as Map<String, dynamic>),
      doneTaskFormDataSerializedOffline:
          json['doneTaskFormDataSerializedOffline'] as Map<String, dynamic>?,
      submitUrlOffline: json['submitUrlOffline'] as String?,
      formHTMLPageOffline: json['formHTMLPageOffline'] as String?,
    );

Map<String, dynamic> _$TaskIvyToJson(_TaskIvy instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'fullRequestPath': instance.fullRequestPath,
      'offline': instance.offline,
      'startTimeStamp': instance.startTimeStamp.toIso8601String(),
      'expiryTimeStamp': instance.expiryTimeStamp?.toIso8601String(),
      'priority': instance.priority,
      'state': instance.state,
      'activatorName': instance.activatorName,
      'category': instance.category,
      'caseTask': instance.caseTask,
      'doneTaskFormDataSerializedOffline':
          instance.doneTaskFormDataSerializedOffline,
      'submitUrlOffline': instance.submitUrlOffline,
      'formHTMLPageOffline': instance.formHTMLPageOffline,
    };
