import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_rating_app/application.dart';
import 'package:flutter_rating_app/core/sharepref/app_share_pref.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/providers.dart';

void main() {
  bootstrap();
}


void bootstrap() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: '.env');
    final prefs = await SharedPreferences.getInstance();
    final appSharePreference = AppSharePrefImpl(prefs);
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    // Ensure
    runApp(
      ProviderScope(
        overrides: [
          //Overrides for value async
          appSharePrefProvider.overrideWithValue(appSharePreference),
        ],
        child: const MyApplication(),
      ),
    );
  }, (Object error, StackTrace stack) async {
    debugPrint('Error -> $error');
  });
}