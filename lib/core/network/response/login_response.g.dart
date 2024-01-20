// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      accessToken: json['access_token'] as String?,
      email: json['email'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      refreshToken: json['refresh_token'] as String?,
      role: json['role'] as String?,
      username: json['username'] as String?,
      field: json['field'] as String?,
      fullName: json['full_name'] as String?,
      media:
          json['media'] == null ? null : MediaResponse.fromJson(json['media']),
      counter: json['counter'] as String?,
      departmentResponse: json['department'] == null
          ? null
          : DepartmentResponse.fromJson(
              json['department'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'email': instance.email,
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'refresh_token': instance.refreshToken,
      'role': instance.role,
      'username': instance.username,
      'field': instance.field,
      'full_name': instance.fullName,
      'media': instance.media,
      'counter': instance.counter,
      'department': instance.departmentResponse,
    };
