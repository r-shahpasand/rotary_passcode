import 'package:flutter/widgets.dart';
import 'package:rotary_passcode/painter/rotary_background_painter.dart';

class RotaryInputWidget extends StatelessWidget {
  const RotaryInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final width = constraints.maxWidth;
      final size = Size(width, width);

      return CustomPaint(
        size: size,
        painter: const RotaryDialBackgroundPainter(),
      );
    });
  }
}
