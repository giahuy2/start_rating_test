part of 'rating_page.dart';

class RatingHorizontalLayout extends ConsumerStatefulWidget {
  const RatingHorizontalLayout({super.key});

  @override
  ConsumerState createState() => _RatingHorizontalLayoutState();
}

class _RatingHorizontalLayoutState extends ConsumerState<RatingHorizontalLayout> {
  late final TextEditingController _feedBackController = TextEditingController();
  late final assetsAudioPlayer = AssetsAudioPlayer();

  void clickAngry(Rating value) {
    if (value == Rating.good) {
      _dialogBuilder(context, value);
    } else {
      feedBack(value, null);
    }
  }

  Future<void> _dialogBuilder(BuildContext context, Rating value) {
    _feedBackController.clear();
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bạn chưa hài lòng về dịch vụ của chúng tôi?'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                const Text('Hãy cho chúng tôi vài lời nhận xét để cải thiện dịch vụ tốt hơn\n'),
                TextField(
                  controller: _feedBackController,
                  maxLines: 1,
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Huỷ'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Gửi'),
              onPressed: () {
                Navigator.of(context).pop();
                feedBack(value, _feedBackController.text);
              },
            ),
          ],
        );
      },
    );
  }

  void feedBack(Rating value, String? note) {
    _feedBackController.clear();
    ref.read(ratingControllerProvider.notifier).onFeedBack(value, note);
    assetsAudioPlayer.open(Audio('assets/audios/success_sound.mp3'));
  }
  @override
  Widget build(BuildContext context) {
    final offTime = ref.watch(offTimeProvider);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Spacer(),
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Consumer(builder: (context, ref, d) {
                      final image = ref.watch(imageUserProvider);
                      return Container(
                        width: context.getScreenWidth() / 3,
                        height: context.getScreenWidth() / 3,
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
                    Text(
                      !offTime ? 'Tạm nghỉ' : "Hoạt động",
                      style: context.getTextTheme().headlineMedium,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: context.getScreenWidth() / 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Spacer(flex: 2,),
                      Consumer(builder: (context, ref, d) {
                        final field = ref.watch(fieldUserProvider);
                        return Text(
                          field,
                          style: context
                              .getTextTheme()
                              .headlineMedium
                              ?.copyWith(fontWeight: FontWeight.w700, fontSize: 32, color: Colors.black),
                        );
                      }),
                      const SizedBox(height: 20,),
                      Consumer(builder: (context, ref, d) {
                        final department = ref.watch(departmentUserProvider);
                        return Text(
                          department,
                          style: context
                              .getTextTheme()
                              .headlineMedium
                              ?.copyWith(fontWeight: FontWeight.w700, fontSize: 50, color: Colors.red),
                        );
                      }),
                      const SizedBox(height: 20,),
                      Consumer(builder: (context, ref, d) {
                        final name = ref.watch(nameUserProvider);
                        return Text(
                          name,
                          style: context
                              .getTextTheme()
                              .headlineMedium
                              ?.copyWith(fontWeight: FontWeight.w700, fontSize: 44, color: Colors.red),
                        );
                      }),
                      const Spacer(flex: 2,),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: offTime
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Spacer(),
                      ...Rating.values
                          .map((e) => Expanded(
                                flex: 1,
                                child: EmojiWidget(
                                  rating: e,
                                  actionClick: (value) {
                                    clickAngry(value);
                                  },
                                ),
                              ))
                          .toList(),
                      const Spacer(),
                    ],
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}
