import 'package:flutter_rating_app/core/network/network_provider.dart';
import 'package:flutter_rating_app/core/network/request/feedback_request.dart';
import 'package:flutter_rating_app/core/network/response/feed_back_counter_response.dart';
import 'package:flutter_rating_app/core/providers.dart';
import 'package:flutter_rating_app/core/sharepref/app_share_pref.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_controller.g.dart';

@riverpod
class AccountController extends _$AccountController {
  @override
  Future<FeedBackCounterResponse?> build() async {
    final services = ref.read(apiServicesProvider);
    final userId = ref.read(appSharePrefProvider).getInt(key: AppSharePrefKey.idUser);
    final response = await services.getCounterWithId(userId?.toString() ?? '');
    return response.data;
  }
}
