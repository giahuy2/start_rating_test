import 'package:freezed_annotation/freezed_annotation.dart';

class LoginRequest {
  LoginRequest({
    String? userName,
    String? password,
  }) {
    _userName = userName;
    _password = password;
  }

  String? _userName;
  String? _password;

  @JsonKey(name: 'is_remember_me')
  bool? isRememberMe;


  LoginRequest copyWith({
    String? username,
    String? password,
  }) =>
      LoginRequest(
        userName: userName ?? _userName,
        password: password ?? _password,
      );

  String? get userName => _userName;

  String? get password => _password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['is_remember_me'] = true;
    map['username'] = _userName;
    map['password'] = _password;
    return map;
  }
}
