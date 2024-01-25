part of 'login_page.dart';

class LoginHorizontalLayout extends ConsumerWidget {
  LoginHorizontalLayout({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void onClickLogin(BuildContext context, WidgetRef ref) {
    FocusScope.of(context).unfocus();
    ref.read(authControllerProvider.notifier).login(
          _emailController.text,
          _passwordController.text,context
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Assets.svg.ratingLogin.svg(
            height: context.getScreenHeight() / 1.95,
          ),
          WTextFormField.email(
            controller: _emailController,
            hint: 'Tài khoản',
          ),
          const SizedBox(
            height: 16,
          ),
          WTextFormField.password(
            controller: _passwordController,
            hint: 'Mật khẩu',
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              onClickLogin(context, ref);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.blue,
              minimumSize: Size(context.getScreenHeight(), 50), // NEW
            ),
            child: Text(
              'Đăng nhập',
              style: context.getTextTheme().bodyLarge?.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
