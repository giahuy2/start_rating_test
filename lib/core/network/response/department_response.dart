//
// {
// "id": 1,
// "created_at": "2023-12-19T18:16:14.558215Z",
// "updated_at": "2023-12-19T18:16:14.558215Z",
// "name": "Đơn vị 1",
// "users": null
// }
import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_response.freezed.dart';
part 'department_response.g.dart';

@freezed
class DepartmentResponse with _$DepartmentResponse {
  const factory DepartmentResponse({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'name') String? name,
  }) = _DepartmentResponse;

  factory DepartmentResponse.fromJson(Map<String, dynamic> json) => _$DepartmentResponseFromJson(json);
}