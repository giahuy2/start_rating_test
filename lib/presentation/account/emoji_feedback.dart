import 'package:flutter/material.dart';
import 'package:flutter_rating_app/core/constant.dart';
import 'package:flutter_rating_app/core/extensions.dart';
import 'package:flutter_rating_app/core/network/response/feed_back_counter_response.dart';

typedef ActionClickEmoji = Function(Rating);

class EmojiFeedBack extends StatelessWidget {
  const EmojiFeedBack({
    super.key,
    this.feedBackCounterResponse,
  });

  final FeedBackCounterResponse? feedBackCounterResponse;

  int? getCounter(Rating rating) {
    switch (rating) {
      // case Rating.veryGood:
      //   return feedBackCounterResponse!.veryGood;
      case Rating.good:
        return feedBackCounterResponse!.good;
      // case Rating.normal:
      //   return feedBackCounterResponse!.normal;
      // case Rating.bad:
      //   return feedBackCounterResponse!.bad;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (feedBackCounterResponse == null) {
      return const SizedBox();
    } else {
      return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const Spacer(),
        ...Rating.values.map((e) {
          return Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  e.emoji,
                  style: context.getTextTheme().headlineLarge?.copyWith(fontSize: 72),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  e.content,
                  style: context.getTextTheme().headlineSmall,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  getCounter(e).toString(),
                  textAlign: TextAlign.center,
                  style: context.getTextTheme().bodyLarge,
                )
              ],
            ),
          );
        }).toList(),
        const Spacer(),
      ]);
    }
  }
}
