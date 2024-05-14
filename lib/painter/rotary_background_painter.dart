import 'dart:math' as math;

import 'package:flutter/rendering.dart';
import 'package:rotary_passcode/config/constants.dart';
import 'package:rotary_passcode/config/utils.dart';

class RotaryDialBackgroundPainter extends CustomPainter {
  const RotaryDialBackgroundPainter();

  @override
  void paint(Canvas canvas, Size size) {
    const ringWidth = Constants.rotaryRingWidth;
    final paint = Paint()
      ..color = const Color.fromRGBO(0, 0, 0, 1.0)
      ..strokeWidth = ringWidth
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
      Rect.fromCircle(  /// to fit inside the given rectangle
        center: size.centerOffset,
        radius: size.width / 2 - ringWidth / 2,
      ),
      0,  /// startAngle
      math.pi * 2.0,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(RotaryDialBackgroundPainter oldDelegate) => false;
}