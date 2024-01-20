import 'package:flutter_rating_app/core/providers.dart';
import 'package:flutter_rating_app/core/sharepref/app_share_pref.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'waiting_controller.g.dart';

@riverpod
class WaitingController extends _$WaitingController {

  @override
  FutureOr<bool> build() async {
    final sharePref = ref.read(appSharePrefProvider);
    return sharePref.getString(key: AppSharePrefKey.tokenUser) != null;
  }
}
