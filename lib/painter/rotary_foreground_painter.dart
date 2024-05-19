import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rotary_passcode/config/constants.dart';
import 'package:rotary_passcode/config/utils.dart';

class RotaryForegroundPainter extends CustomPainter {
  final double numberRadiusFromCenter;

  RotaryForegroundPainter(this.numberRadiusFromCenter);

  @override
  void paint(Canvas canvas, Size size) {
    const ringWidth = Constants.rotaryRingWidth;

    final paint = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = ringWidth - Constants.rotaryRingPadding * 2
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
      Rect.fromCircle(
        center: size.centerOffset,
        radius: size.width / 2 - ringWidth / 2,
      ),
      Constants.firstDialNumberPosition,
      Constants.maxRotaryRingSweepAngle,
      false,
      paint,
    );

    canvas.drawCircle(
      size.centerOffset +
          Offset.fromDirection(pi / 6, numberRadiusFromCenter),
      ringWidth / 5,
      Paint()..color = const Color.fromRGBO(255, 255, 255, 1.0),
    );
  }

  @override
  bool shouldRepaint(covariant RotaryForegroundPainter oldDelegate) {
    return oldDelegate.numberRadiusFromCenter != numberRadiusFromCenter;
  }
}
