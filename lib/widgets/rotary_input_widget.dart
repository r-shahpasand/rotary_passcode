import 'package:flutter/widgets.dart';
import 'package:rotary_passcode/config/constants.dart';
import 'package:rotary_passcode/painter/rotary_background_painter.dart';
import 'package:rotary_passcode/painter/rotary_foreground_painter.dart';
import 'package:rotary_passcode/widgets/dial_number_widget.dart';
import 'dart:math' as math;

class RotaryInputWidget extends StatelessWidget {
  const RotaryInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;
      final size = Size(width, width);

      final dialNumberDistanceFromCenter = width / 2 -
          16.0 - /// page padding
          Constants.rotaryRingPadding * 2 -
          Constants.dialNumberPadding * 2;

      return Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: size,
            painter: const RotaryDialBackgroundPainter(),
          ),
          CustomPaint(
            size: size,
            painter: RotaryForegroundPainter(dialNumberDistanceFromCenter),
          ),
          for (int i = 0; i < Constants.inputValues.length; i++)
            Transform.translate(
              offset: Offset.fromDirection(
                (i + 1) * -math.pi / 6,
                dialNumberDistanceFromCenter,
              ),
              child: DialNumberWidget(number: Constants.inputValues[i]),
            ),
        ],
      );
    });
  }
}
