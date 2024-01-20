part of 'account_page.dart';

class AccountHorizontalLayout extends ConsumerStatefulWidget {
  const AccountHorizontalLayout({super.key});

  @override
  ConsumerState createState() => _AccountHorizontalLayoutState();
}

class _AccountHorizontalLayoutState extends ConsumerState<AccountHorizontalLayout> {

  void logout(){
    ref.read(appSharePrefProvider).clear();
    context.pushReplacement(AppRoute.login.getPath);
  }

  @override
  Widget build(BuildContext context) {
    final counterFeedback = ref.watch(accountControllerProvider).value;
    final offTime = ref.watch(offTimeProvider);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Consumer(
                      builder: (context, ref, w) {
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
                      }
                    ),
                    Switch(
                      value: offTime,
                      onChanged: (value) {
                        ref.read(offTimeProvider.notifier).setOffTime(value);
                      },
                    ),
                    const SizedBox(height: 16.0,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.red,
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          logout();
                        },
                        child: Text('Đăng xuất',style: context.getTextTheme().titleMedium?.copyWith(
                            color: Colors.white
                        ),),
                      ),
                    )

                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: context.getScreenWidth() / 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Spacer(),
                      Consumer(builder: (context,ref,d) {
                        final field = ref.watch(fieldUserProvider);
                        return Text(
                          field,
                          style: context
                              .getTextTheme()
                              .headlineMedium
                              ?.copyWith(fontWeight: FontWeight.w700, fontSize: 32, color: Colors.black),
                        );
                      }),
                      const SizedBox(
                        height: 24.0,
                      ),
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
                      const SizedBox(
                        height: 24.0,
                      ),
                      Consumer(
                        builder : (context, ref, d) {
                          final name = ref.watch(nameUserProvider);
                         return Text(
                            name,
                            style: context
                                .getTextTheme()
                                .headlineMedium
                                ?.copyWith(fontWeight: FontWeight.w700, fontSize: 44, color: Colors.red),
                          );
                        }
                      ),
                      const Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: EmojiFeedBack(feedBackCounterResponse: counterFeedback,),
          )
        ],
      ),
    );
  }
}
