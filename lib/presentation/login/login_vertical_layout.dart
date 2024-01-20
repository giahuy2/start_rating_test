part of 'login_page.dart';

class LoginVerticalLayout extends ConsumerWidget {
  LoginVerticalLayout({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void onClickLogin(BuildContext context, WidgetRef ref) {
    FocusScope.of(context).unfocus();
    ref.read(authControllerProvider.notifier).login(
          _emailController.text,
          _passwordController.text,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 44,
          ),
          Assets.svg.ratingLogin.svg(
            height: context.getScreenHeight() / 3,
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
              foregroundColor: Colors.black, backgroundColor: Colors.blue,
              minimumSize: const Size.fromHeight(50), // NEW
            ),
            child: Text(
              'Đăng nhập',
              style: context.getTextTheme().bodyMedium?.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
