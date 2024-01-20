import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_rating_app/core/constant.dart';
import 'package:flutter_rating_app/core/network/network_provider.dart';
import 'package:flutter_rating_app/core/network/request/feedback_request.dart';
import 'package:flutter_rating_app/core/providers.dart';
import 'package:flutter_rating_app/core/sharepref/app_share_pref.dart';
import 'package:flutter_rating_app/presentation/login/auth_controller.dart';
import 'package:flutter_rating_app/presentation/main/rating_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rating_controller.g.dart';

@riverpod
class RatingController extends _$RatingController {
  @override
  FutureOr<void> build() {}

  void onFeedBack(Rating rating, String? answerString) async {
    state = const AsyncLoading();
    final sharePref = ref.read(appSharePrefProvider);
    final id = sharePref.getInt(key: AppSharePrefKey.idUser);
    if (id == null || id == 0) {
      return;
    }
    final services = ref.read(apiServicesProvider);
    final answerString = questions.map((question) => question.selectedAnswer).join('; ');
    final feedbackRequest = FeedbackRequest(
      level: rating.idEmoji,
      note: answerString,
      userId: id,
    );
    state = await AsyncValue.guard(() => services.submitFeedback(feedbackRequest));
  }
}

@riverpod
class NameUser extends _$NameUser {
  @override
  String build() {
    final authController = ref.watch(authControllerProvider);
    if (authController.value == null) {
      final data = ref.watch(appSharePrefProvider);
      return data.getString(key: AppSharePrefKey.nameUser) ?? '';
    } else {
      return authController.value?.data?.fullName ?? '';
    }
  }
}

@riverpod
class DepartmentUser extends _$NameUser {
  @override
  String build() {
    final authController = ref.watch(authControllerProvider);
    if (authController.value == null) {
      final data = ref.watch(appSharePrefProvider);
      return data.getString(key: AppSharePrefKey.departmentUser) ?? '';
    } else {
      return authController.value?.data?.counter ?? '';
    }
  }
}

@riverpod
class FieldUser extends _$NameUser {
  @override
  String build() {
    final authController = ref.watch(authControllerProvider);
    if (authController.value == null) {
      final data = ref.watch(appSharePrefProvider);
      return data.getString(key: AppSharePrefKey.fieldUser) ?? '';
    } else {
      return authController.value?.data?.field ?? '';
    }
  }
}

@riverpod
class ImageUser extends _$NameUser {
  @override
  String build() {
    final authController = ref.watch(authControllerProvider);
    if (authController.value == null) {
      final data = ref.watch(appSharePrefProvider);
      return '${dotenv.env['BASE_URL']}${data.getString(key: AppSharePrefKey.imageUser)}' ?? '';
    } else {
      return '${dotenv.env['BASE_URL']}${authController.value?.data!.media?.url}';
    }
  }
}

@riverpod
class OffTime extends _$OffTime {
  @override
  bool build() {
    final authController = ref.watch(authControllerProvider);
    final sharePref = ref.watch(appSharePrefProvider);
    final offTime = sharePref.getBoolean(key: AppSharePrefKey.offTime) ?? true;
    return offTime;
  }

  void setOffTime(bool setOffTime) {
    final sharePref = ref.watch(appSharePrefProvider);
    sharePref.saveBool(key: AppSharePrefKey.offTime, value: setOffTime);
    state = setOffTime;
  }
}
