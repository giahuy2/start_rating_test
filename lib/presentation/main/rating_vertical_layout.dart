part of 'rating_page.dart';

class RatingVerticalLayout extends ConsumerStatefulWidget {
  const RatingVerticalLayout({super.key});

  @override
  ConsumerState createState() => _RatingVerticalLayoutState();
}


class _RatingVerticalLayoutState extends ConsumerState<RatingVerticalLayout> {
  void clickGood(Rating value) {
    if (value == Rating.good) {
      _dialogBuilder(context, value);
    } else {
      feedBack(value, null);
    }
  }

  late final assetsAudioPlayer = AssetsAudioPlayer();

  Future<void> _dialogBuilder(BuildContext context, Rating value) {
    final answerString =
        questions.map((question) => question.selectedAnswer).join(';');
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Scrollbar(
            thumbVisibility: true,
            trackVisibility: true,
            // Hiển thị thanh cuộn khi di chuột
            thickness: 20.0,
            // Độ dày thanh cuộn
            radius: const Radius.circular(10.0),
            // Bán kính của đầu thanh cuộn
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              controller: ScrollController(),
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Vui lòng đánh giá: ',
                    style: context.getTextTheme().titleLarge,
                  ),
                  const RatingDialog(),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge, backgroundColor: Colors.grey, // Màu nền của nút
                minimumSize: const Size(200, 70), // Kích thước tối thiểu của nút
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Hủy',
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge, backgroundColor: Colors.red, // Màu nền của nút
                minimumSize: const Size(200, 70), // Kích thước tối thiểu của nút
              ),
              onPressed: () {
                Navigator.of(context).pop();
                feedBack(value, answerString);
              },
              child: const Text(
                'Đánh giá',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        );
      },
    );
  }

  void feedBack(Rating value, String? note) {
    ref.read(ratingControllerProvider.notifier).onFeedBack(value, note);
    assetsAudioPlayer.open(Audio('assets/audios/success_sound.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    final offTime = ref.watch(offTimeProvider);
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                  Padding(
                    padding:  EdgeInsets.only(left: context.getScreenWidth() / 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'THÔNG TIN CÁN BỘ',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Consumer(builder: (context, ref, w) {
                          final image = ref.watch(imageUserProvider);
                          return Container(
                            width: context.getScreenHeight() / 3,
                            height: context.getScreenHeight() / 3,
                            margin: const EdgeInsets.only(left: 16.0),
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(color: Colors.black, width: 1.2)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: image.isEmpty
                                  ? Assets.png.userDefault.image()
                                  : Image.network(
                                      image,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          );
                        }),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            !offTime ? 'Tạm nghỉ' : "Hoạt động",
                            style: context.getTextTheme().headlineMedium,
                          ),
                        )
                      ],
                    ),
                  ),
              Padding(
                padding: EdgeInsets.only(right: context.getScreenWidth() / 7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Consumer(builder: (context, ref, d) {
                      final field = ref.watch(fieldUserProvider);
                      debugPrint(' Alo alo -> $field ');
                      return Text(
                        field.toUpperCase(),
                        // Chuyển đổi chuỗi thành chữ in hoa
                        style: context.getTextTheme().headlineMedium?.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 60,
                              color: Colors.black,
                            ),
                      );
                    }),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Consumer(builder: (context, ref, d) {
                      final department = ref.watch(departmentUserProvider);
                      return Text(
                        department.toUpperCase(),
                        style: context.getTextTheme().headlineMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 60,
                            color: Colors.red),
                      );
                    }),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Consumer(builder: (context, ref, d) {
                      final name = ref.watch(nameUserProvider);
                      debugPrint(' Alo alo name -> $name ');
                      return Text(
                        name,
                        style: context.getTextTheme().headlineMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 60,
                            color: Colors.red),
                      );
                    }),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: offTime
                          ? ElevatedButton(
                              onPressed: () {
                                clickGood(Rating.good);
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.lightBlueAccent[200],
                                // Màu nền của nút
                                padding: const EdgeInsets.only(
                                    left: 60,
                                    right: 60,
                                    top: 40,
                                    bottom: 40), // Kích thước nút
                              ),
                              child: const Text(
                                'ĐÁNH GIÁ',
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
