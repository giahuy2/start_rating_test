import 'package:flutter/material.dart';
import 'package:flutter_rating_app/core/constant.dart';
import 'package:flutter_rating_app/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApplication extends ConsumerWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: goRouter,
      locale: const Locale.fromSubtags(languageCode: 'vi'),
      title: AppConstant.appName,
      themeMode: ThemeMode.light,
    );
  }
}
