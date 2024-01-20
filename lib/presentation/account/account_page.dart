import 'package:flutter/material.dart';
import 'package:flutter_rating_app/core/extensions.dart';
import 'package:flutter_rating_app/core/providers.dart';
import 'package:flutter_rating_app/gen/assets.gen.dart';
import 'package:flutter_rating_app/presentation/account/account_controller.dart';
import 'package:flutter_rating_app/presentation/account/emoji_feedback.dart';
import 'package:flutter_rating_app/presentation/app_loading.dart';
import 'package:flutter_rating_app/presentation/main/rating_controller.dart';
import 'package:flutter_rating_app/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'account_horizontal_layout.dart';

part 'account_vertical_layout.dart';

class AccountPage extends ConsumerStatefulWidget {
  const AccountPage({super.key});

  @override
  ConsumerState createState() => _AccountPageState();
}

class _AccountPageState extends ConsumerState<AccountPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(ratingControllerProvider, (previous, next) {
      if (next is AsyncData) {
        AppLoading.hide(context, ref);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Thanks you for feedback')));
      } else if (next is AsyncLoading) {
        AppLoading.show(context, ref);
      } else {
        AppLoading.hide(context, ref);
      }
    });

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.blue,
              pinned: true,
              centerTitle: true,
              title: Center(
                child: Text(
                  'Thông tin tài khoản',
                  style: context
                      .getTextTheme()
                      .headlineMedium
                      ?.copyWith(fontSize: 36, fontWeight: FontWeight.w600, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SliverFillRemaining(
              child: OrientationBuilder(
                builder: (BuildContext context, Orientation orientation) {
                  if (orientation == Orientation.landscape) {
                    return const AccountVerticalLayout();
                  }
                  return const AccountHorizontalLayout();
                },
              ),
            )
          ],
        ));
  }
}
