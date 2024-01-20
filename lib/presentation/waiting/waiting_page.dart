import 'package:flutter/material.dart';
import 'package:flutter_rating_app/presentation/waiting/waiting_controller.dart';
import 'package:flutter_rating_app/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class WaitingPage extends ConsumerWidget {
  const WaitingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(waitingControllerProvider, (previous, next) {
      if(next.hasValue && next.value == true){
        context.pushReplacement(AppRoute.rating.getPath);
      }else {
        context.pushReplacement(AppRoute.login.getPath);
      }
    });
    return const Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
