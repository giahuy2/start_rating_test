import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_app/core/constant.dart';
import 'package:flutter_rating_app/core/extensions.dart';
import 'package:flutter_rating_app/gen/assets.gen.dart';
import 'package:flutter_rating_app/presentation/app_loading.dart';
import 'package:flutter_rating_app/presentation/main/rating_controller.dart';
import 'package:flutter_rating_app/presentation/main/rating_dialog/question.dart';
import 'package:flutter_rating_app/presentation/main/rating_dialog/rating_dialog.dart';
import 'package:flutter_rating_app/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'rating_horizontal_layout.dart';

part 'rating_vertical_layout.dart';

class RatingPage extends ConsumerStatefulWidget {
  const RatingPage({super.key});

  @override
  ConsumerState createState() => _RatingPageState();
}

List<Question> questions = getQuestions();

class _RatingPageState extends ConsumerState<RatingPage> {
  @override
  void initState() {
    super.initState();
  }

  final assetsAudioPlayer = AssetsAudioPlayer();

  @override
  Widget build(BuildContext context) {
    ref.listen(ratingControllerProvider, (previous, next) {
      if (next is AsyncData) {
        AppLoading.hide(context, ref);
        assetsAudioPlayer.open(
          Audio("success_sound.mp3"),
        );
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          'Cảm ơn Ông/Bà đã phản hồi!',
          style: TextStyle(fontSize: 30),
        )));
      } else if (next is AsyncLoading) {
        AppLoading.show(context, ref);
      } else {
        AppLoading.hide(context, ref);
      }
    });
    final offTime = ref.watch(offTimeProvider);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            backgroundColor: Colors.red,
            toolbarHeight: 100.0,
            // Thay đổi độ cao của AppBar
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/png/logo1.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BỘ PHẬN TIẾP NHẬN VÀ TRẢ KẾT QUẢ',
                      style: context.getTextTheme().headlineMedium?.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'HUYỆN THẠCH THẤT',
                      style: context.getTextTheme().headlineMedium?.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      'Hành chính công vụ',
                      style: context.getTextTheme().headlineMedium?.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            leading: GestureDetector(
                onTap: () {
                  context.push(AppRoute.account.getPath);
                },
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(
                    Icons.person,
                    size: 44,
                  ),
                )),
          ),
        ),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            if (orientation == Orientation.landscape) {
              return const RatingVerticalLayout();
            }
            return const RatingHorizontalLayout();
          },
        ),
      ),
    );
  }
}
