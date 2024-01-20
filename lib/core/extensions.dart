import 'package:flutter/material.dart';
extension ContextExt on BuildContext {
  double getScreenHeight() {
    return MediaQuery.sizeOf(this).height;
  }

  double getScreenWidth() {
    return MediaQuery.sizeOf(this).width;
  }

  double getPaddingStatusBar() {
    return MediaQuery.of(this).viewPadding.top;
  }

  double getPaddingBottomBar() {
    return MediaQuery.of(this).viewPadding.bottom;
  }

  TextTheme getTextTheme() {
    return Theme.of(this).textTheme;
  }

  ColorScheme getColorScheme() {
    return Theme.of(this).colorScheme;
  }
}