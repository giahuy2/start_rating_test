import 'dart:async';
import 'dart:async';
import 'dart:async';
import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter_rating_app/core/network/request/feedback_request.dart';
import 'package:flutter_rating_app/core/network/request/login_request.dart';
import 'package:flutter_rating_app/core/network/response/base_response.dart';
import 'package:flutter_rating_app/core/network/response/feed_back_counter_response.dart';
import 'package:flutter_rating_app/core/network/response/login_response.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';
const apiLogin = 'api/v1/auth/login';
const apiFeedback = 'api/v1/feedbacks';
const apiGetFeedback = 'api/v1/feedbacks/level';
const apiCategory = 'api/v1/categories';
// const apiListHome = 'api/noauth/listHome';

@RestApi()
abstract class ApiServices {
  factory ApiServices(Dio dio) = _ApiServices;

  @POST(apiLogin)
  Future<ResponseWrapper<LoginResponse>> login(@Body() LoginRequest loginRequest);

  @POST(apiFeedback)
  Future<void> submitFeedback(@Body() FeedbackRequest request);

  @GET('$apiFeedback/{id}/level')
  Future<ResponseWrapper<FeedBackCounterResponse>> getCounterWithId(@Path('id') String id);

}
