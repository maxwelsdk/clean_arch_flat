import 'package:flutter/widgets.dart';

const double hundredPercent = 100;

extension ScreenSize on MediaQueryData {
  double get halfHeight => size.height / 2;

  double get halfWidth => size.width / 2;

  double divideWidthBy(int divisor) {
    return size.width / divisor;
  }

  double divideHeightBy(int divisor) {
    return size.width / divisor;
  }

  double percentOfHeight(int percent) {
    return size.height * (percent / hundredPercent);
  }

  double percentOfWidth(int percent) {
    return size.width * (percent / hundredPercent);
  }
}
