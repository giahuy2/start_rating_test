import 'package:flutter_rating_app/core/sharepref/app_share_pref.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';


/// Keeping alive for life cycle app
/// Throw Exception for initialized value from main function
@Riverpod(keepAlive: true)
AppSharePreference appSharePref(AppSharePrefRef ref) {
  return throw UnimplementedError();
}
