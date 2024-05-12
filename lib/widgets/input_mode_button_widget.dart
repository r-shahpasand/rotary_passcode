import 'package:flutter/material.dart';
import 'package:rotary_passcode/enums/input_modes.dart';

class InputModeButtonWidget extends StatelessWidget {
  const InputModeButtonWidget({
    required this.inputMode,
    required this.onModeChanged,
    super.key,
  });

  final InputModes inputMode;
  final VoidCallback onModeChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onModeChanged,
      child: Text(
        (inputMode == InputModes.original ? 'Original' : 'Simplify')
            .toUpperCase(),
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
