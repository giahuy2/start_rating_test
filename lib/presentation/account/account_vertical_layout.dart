part of 'account_page.dart';

class AccountVerticalLayout extends ConsumerStatefulWidget {
  const AccountVerticalLayout({super.key});

  @override
  ConsumerState createState() => _AccountVerticalLayoutState();
}

class _AccountVerticalLayoutState extends ConsumerState<AccountVerticalLayout> {

  void logout() {
    ref.read(appSharePrefProvider).clear();
    context.pushReplacement(AppRoute.login.getPath);
  }

  @override
  Widget build(BuildContext context) {
    // final counterFeedback = ref
    //     .watch(accountControllerProvider)
    //     .value;
    final offTime = ref.watch(offTimeProvider);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: context.getScreenWidth() / 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Consumer(
                          builder: (context, ref, w) {
                            final image = ref.watch(imageUserProvider);
                            return Container(
                              width: context.getScreenHeight() / 3,
                              height: context.getScreenHeight() / 3,
                              margin: const EdgeInsets.only(left: 16.0),
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                      color: Colors.black, width: 1.2)),
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
                          }
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          children: [
                            const Text('Trạng thái hoạt động',style: TextStyle(
                              fontSize: 20
                            ),),
                            Switch(
                              value: offTime,
                              onChanged: (value) {
                                ref.read(offTimeProvider.notifier).setOffTime(
                                    value);
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.red,
                        ),
                        padding: const EdgeInsets.only(
                            left: 20.0, top:15, bottom:15, right:20),
                        child: GestureDetector(
                          onTap: () {
                            logout();
                          },
                          child: Text('Đăng xuất', style: context
                              .getTextTheme()
                              .titleMedium
                              ?.copyWith(
                              color: Colors.white,
                              fontSize: 30
                          ),),
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
                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),
          // Expanded(
          //   flex: 1,
          //   child: EmojiFeedBack(feedBackCounterResponse: counterFeedback,),
          // )
        ],
      ),
    );
  }
}
