import 'package:flutter/material.dart';

class InputModeButtonWidget extends StatelessWidget {
  const InputModeButtonWidget({
    required this.simpleInputMode,
    required this.onModeChanged,
    super.key,
  });

  final bool simpleInputMode;
  final VoidCallback onModeChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onModeChanged,
      child: Text(
        (simpleInputMode ? 'Original' : 'Simplify').toUpperCase(),
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
