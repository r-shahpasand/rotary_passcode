import 'package:flutter/widgets.dart';
import 'package:rotary_passcode/config/constants.dart';
import 'package:rotary_passcode/widgets/dial_number_widget.dart';

const _alignment = MainAxisAlignment.spaceEvenly;

class PasscodeInputWidget extends StatelessWidget {
  const PasscodeInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: _alignment,
      children: [
        for (var i = 0; i < 3; i++)
          Row(
            mainAxisAlignment: _alignment,
            children: [
              for (var j = 0; j < 3; j++)
                DialNumberWidget(number: Constants.inputValues[i * 3 + j]),
            ],
          ),
        DialNumberWidget(number: Constants.inputValues.last),
      ],
    );
  }
}