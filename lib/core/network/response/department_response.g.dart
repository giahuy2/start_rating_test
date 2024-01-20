// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepartmentResponseImpl _$$DepartmentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DepartmentResponseImpl(
      id: json['id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$DepartmentResponseImplToJson(
        _$DepartmentResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'name': instance.name,
    };
