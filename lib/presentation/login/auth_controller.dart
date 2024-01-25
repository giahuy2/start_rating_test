import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_app/core/network/network_provider.dart';
import 'package:flutter_rating_app/core/network/request/login_request.dart';
import 'package:flutter_rating_app/core/network/response/base_response.dart';
import 'package:flutter_rating_app/core/network/response/login_response.dart';
import 'package:flutter_rating_app/core/providers.dart';
import 'package:flutter_rating_app/core/sharepref/app_share_pref.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  FutureOr<ResponseWrapper<LoginResponse>?> build() async {
    return null;
  }

  void login(String email, String password,BuildContext context) async {
    if (email.isEmpty && password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vui lòng nhập tài khoản và mật khẩu.',style: TextStyle(fontSize: 20),),
          duration: Duration(seconds: 3),
        ),
      );
      return;
    }
    state = const AsyncLoading();
    final loginRequest = LoginRequest(userName: email, password: password);
    final services = ref.read(apiServicesProvider);
    final sharePref = ref.read(appSharePrefProvider);

    state = await AsyncValue.guard(() => services.login(loginRequest));

    if (state.hasValue && state.value?.data != null) {
      final user = state.value?.data!;
      sharePref.saveString(key: AppSharePrefKey.tokenUser, value: user!.accessToken ?? "");
      sharePref.saveString(key: AppSharePrefKey.nameUser, value: user.fullName ?? "");
      sharePref.saveString(key: AppSharePrefKey.phoneUser, value: user.phone ?? "");
      sharePref.saveInt(key: AppSharePrefKey.userId, value: user.id ?? 0);
      sharePref.saveString(key: AppSharePrefKey.departmentUser, value: user.counter ?? '');
      sharePref.saveString(key: AppSharePrefKey.fieldUser, value: user.field ?? '');
      sharePref.saveString(key: AppSharePrefKey.imageUser, value: user.media?.url ?? '');
      sharePref.saveInt(key: AppSharePrefKey.idUser, value: user.id ?? 0);
    }
  }
}
