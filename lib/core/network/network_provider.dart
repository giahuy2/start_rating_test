import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_rating_app/core/network/services/api_services.dart';
import 'package:flutter_rating_app/core/providers.dart';
import 'package:flutter_rating_app/core/sharepref/app_share_pref.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'network_provider.g.dart';
@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  final appPreference = ref.read(appSharePrefProvider);
  var tokenUser = appPreference.getString(key: AppSharePrefKey.tokenUser);
  final baseOptions = BaseOptions(baseUrl: dotenv.env['BASE_URL'] ?? '');
  Dio dio = Dio(baseOptions)
    ..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.connectTimeout = const Duration(minutes: 2);
          options.receiveTimeout = const Duration(minutes: 2);
          if (tokenUser != null) options.headers['token'] = tokenUser;
          handler.next(options);
        },
      ),
    )
    ..interceptors
        .add(LogInterceptor(request: true, requestBody: true, requestHeader: true, responseBody: true, error: true));
  return dio;
}

@Riverpod(keepAlive: true)
ApiServices apiServices(ApiServicesRef ref){
  final dio = ref.read(dioProvider);
  return ApiServices(dio);
}