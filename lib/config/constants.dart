import 'dart:math';

class Constants {
  static const inputValues = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  static const rotaryRingPadding = 4.0;
  static const rotaryRingWidth = 80.0;

  static const dialNumberPadding = 8.0;
  static const dialNumberRadius =
      rotaryRingWidth / 2 - (rotaryRingPadding + dialNumberPadding);

  static const firstDialNumberPosition = pi / 3;
  static const maxRotaryRingAngle = pi * 7 / 4;
  static const maxRotaryRingSweepAngle = pi / 2 * 3;
}
