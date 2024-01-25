import 'package:flutter/material.dart';
import 'package:flutter_rating_app/core/extensions.dart';
import 'package:flutter_rating_app/gen/assets.gen.dart';
import 'package:flutter_rating_app/presentation/app_loading.dart';
import 'package:flutter_rating_app/presentation/login/auth_controller.dart';
import 'package:flutter_rating_app/presentation/w_text_form_field.dart';
import 'package:flutter_rating_app/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'login_horizontal_layout.dart';

part 'login_vertical_layout.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    ref.listen(authControllerProvider, (previous, next) {
      if (next is AsyncData && next.value?.data != null) {
        AppLoading.hide(context, ref);
        context.pushReplacement(AppRoute.rating.getPath);
      } else if (next is AsyncLoading) {
        AppLoading.show(context, ref);
      } else if (next is AsyncError) {
        debugPrint('Log log -> ${next.error}');
        AppLoading.hide(context, ref);
        // Hiển thị thông báo lỗi
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Đăng nhập thất bại. Tài khoản hoặc mật khẩu của bạn sai.',style: TextStyle(fontSize: 20),),
            duration: Duration(seconds: 4),
          ),
        );
      }
    });

    return Scaffold(
      body: SingleChildScrollView(
        child: OrientationBuilder(builder: (context, orientation) {
          return orientation == Orientation.landscape ? LoginVerticalLayout() : LoginHorizontalLayout();
        }),
      ),
    );
  }
}
