import 'package:flutter/material.dart';
import 'package:flutter_rating_app/core/constant.dart';
import 'package:flutter_rating_app/presentation/account/account_page.dart';
import 'package:flutter_rating_app/presentation/login/login_page.dart';
import 'package:flutter_rating_app/presentation/main/rating_page.dart';
import 'package:flutter_rating_app/presentation/waiting/waiting_page.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { waiting, login, rating, account }

extension RouterExt on AppRoute {
  String get getPath {
    return "/$name";
  }

  String get getSubPath {
    return name;
  }
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  initialLocation: AppConstant.forwardSlash,
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      name: AppRoute.waiting.name,
      path: AppConstant.forwardSlash,
      pageBuilder: (context, state) {
        return const MaterialPage(child: WaitingPage());
      },
    ),
    // Main Route
    GoRoute(
      name: AppRoute.login.name,
      path: AppRoute.login.getPath,
      pageBuilder: (context, state) {
        return const MaterialPage(child: LoginPage());
      },
    ),
    GoRoute(
      name: AppRoute.rating.name,
      path: AppRoute.rating.getPath,
      pageBuilder: (context, state) {
        return const MaterialPage(child: RatingPage());
      },
    ),
    GoRoute(
      name: AppRoute.account.name,
      path: AppRoute.account.getPath,
      pageBuilder: (context, state) {
        return const MaterialPage(child: AccountPage());
      },
    ),
  ],
);
