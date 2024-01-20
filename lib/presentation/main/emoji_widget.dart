import 'package:flutter/material.dart';
import 'package:flutter_rating_app/core/constant.dart';
import 'package:flutter_rating_app/core/extensions.dart';

typedef ActionClickEmoji = Function(Rating);

class EmojiWidget extends StatelessWidget {
  const EmojiWidget({super.key, required this.rating, required this.actionClick});

  final Rating rating;
  final ActionClickEmoji actionClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            actionClick.call(rating);
          },
          icon: Text(
            rating.emoji,
            style: context.getTextTheme().headlineLarge?.copyWith(fontSize: 80),
          ),
        ),
        Text(
          rating.content,
          textAlign: TextAlign.center,
          style: context.getTextTheme().headlineSmall,
        ),
      ],
    );
  }
}
