import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rotary_passcode/enums/input_modes.dart';
import 'package:rotary_passcode/widgets/input_mode_button_widget.dart';
import 'package:rotary_passcode/widgets/passcode_input_widget.dart';

const _padding = 16.0;

class PassCodeInputPage extends StatefulWidget {
  const PassCodeInputPage({Key? key, required this.expectedPassCode})
      : super(key: key);

  final String expectedPassCode;

  @override
  State<PassCodeInputPage> createState() => _PassCodeInputPageState();
}

class _PassCodeInputPageState extends State<PassCodeInputPage> {
  InputModes _passCodeMode = InputModes.original;

  void _onModeChanged() => setState(() {
        _passCodeMode = _passCodeMode == InputModes.original
            ? InputModes.simple
            : InputModes.original;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(
            _padding,
            _padding * 3,
            _padding,
            _padding * 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Enter\npasscode'.toUpperCase(),
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 32.0),
              const Expanded(child: PasscodeInputWidget()),
              Align(
                alignment: Alignment.centerRight,
                child: InputModeButtonWidget(
                  inputMode: _passCodeMode,
                  onModeChanged: _onModeChanged,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
