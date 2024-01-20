import 'package:flutter_rating_app/core/network/response/department_response.dart';
import 'package:flutter_rating_app/core/network/response/media_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'field') String? field,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'media') MediaResponse? media,
    @JsonKey(name: 'counter') String? counter,
    @JsonKey(name: 'department') DepartmentResponse? departmentResponse,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}

