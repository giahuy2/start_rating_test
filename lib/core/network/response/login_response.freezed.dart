// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'field')
  String? get field => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'media')
  MediaResponse? get media => throw _privateConstructorUsedError;
  @JsonKey(name: 'counter')
  String? get counter => throw _privateConstructorUsedError;
  @JsonKey(name: 'department')
  DepartmentResponse? get departmentResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
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
      @JsonKey(name: 'department') DepartmentResponse? departmentResponse});

  $DepartmentResponseCopyWith<$Res>? get departmentResponse;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? refreshToken = freezed,
    Object? role = freezed,
    Object? username = freezed,
    Object? field = freezed,
    Object? fullName = freezed,
    Object? media = freezed,
    Object? counter = freezed,
    Object? departmentResponse = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaResponse?,
      counter: freezed == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as String?,
      departmentResponse: freezed == departmentResponse
          ? _value.departmentResponse
          : departmentResponse // ignore: cast_nullable_to_non_nullable
              as DepartmentResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartmentResponseCopyWith<$Res>? get departmentResponse {
    if (_value.departmentResponse == null) {
      return null;
    }

    return $DepartmentResponseCopyWith<$Res>(_value.departmentResponse!,
        (value) {
      return _then(_value.copyWith(departmentResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseImplCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$LoginResponseImplCopyWith(
          _$LoginResponseImpl value, $Res Function(_$LoginResponseImpl) then) =
      __$$LoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String? accessToken,
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
      @JsonKey(name: 'department') DepartmentResponse? departmentResponse});

  @override
  $DepartmentResponseCopyWith<$Res>? get departmentResponse;
}

/// @nodoc
class __$$LoginResponseImplCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$LoginResponseImpl>
    implements _$$LoginResponseImplCopyWith<$Res> {
  __$$LoginResponseImplCopyWithImpl(
      _$LoginResponseImpl _value, $Res Function(_$LoginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? refreshToken = freezed,
    Object? role = freezed,
    Object? username = freezed,
    Object? field = freezed,
    Object? fullName = freezed,
    Object? media = freezed,
    Object? counter = freezed,
    Object? departmentResponse = freezed,
  }) {
    return _then(_$LoginResponseImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      field: freezed == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as MediaResponse?,
      counter: freezed == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as String?,
      departmentResponse: freezed == departmentResponse
          ? _value.departmentResponse
          : departmentResponse // ignore: cast_nullable_to_non_nullable
              as DepartmentResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseImpl implements _LoginResponse {
  const _$LoginResponseImpl(
      {@JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'refresh_token') this.refreshToken,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'field') this.field,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'media') this.media,
      @JsonKey(name: 'counter') this.counter,
      @JsonKey(name: 'department') this.departmentResponse});

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @override
  @JsonKey(name: 'role')
  final String? role;
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'field')
  final String? field;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'media')
  final MediaResponse? media;
  @override
  @JsonKey(name: 'counter')
  final String? counter;
  @override
  @JsonKey(name: 'department')
  final DepartmentResponse? departmentResponse;

  @override
  String toString() {
    return 'LoginResponse(accessToken: $accessToken, email: $email, id: $id, name: $name, phone: $phone, refreshToken: $refreshToken, role: $role, username: $username, field: $field, fullName: $fullName, media: $media, counter: $counter, departmentResponse: $departmentResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.departmentResponse, departmentResponse) ||
                other.departmentResponse == departmentResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accessToken,
      email,
      id,
      name,
      phone,
      refreshToken,
      role,
      username,
      field,
      fullName,
      media,
      counter,
      departmentResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      __$$LoginResponseImplCopyWithImpl<_$LoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      {@JsonKey(name: 'access_token') final String? accessToken,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'phone') final String? phone,
      @JsonKey(name: 'refresh_token') final String? refreshToken,
      @JsonKey(name: 'role') final String? role,
      @JsonKey(name: 'username') final String? username,
      @JsonKey(name: 'field') final String? field,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'media') final MediaResponse? media,
      @JsonKey(name: 'counter') final String? counter,
      @JsonKey(name: 'department')
      final DepartmentResponse? departmentResponse}) = _$LoginResponseImpl;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String? get accessToken;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'refresh_token')
  String? get refreshToken;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'field')
  String? get field;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'media')
  MediaResponse? get media;
  @override
  @JsonKey(name: 'counter')
  String? get counter;
  @override
  @JsonKey(name: 'department')
  DepartmentResponse? get departmentResponse;
  @override
  @JsonKey(ignore: true)
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
