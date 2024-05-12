import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rotary_passcode/passcode_input_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Rotary Passcode',
      debugShowCheckedModeBanner: false,
      home: PassCodeInputPage(expectedPassCode: ''),
    );
  }
}