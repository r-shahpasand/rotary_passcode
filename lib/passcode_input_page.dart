import 'package:flutter/material.dart';

class PassCodeInputPage extends StatefulWidget {
  const PassCodeInputPage({Key? key, required this.expectedPassCode})
      : super(key: key);

  final String expectedPassCode;

  @override
  State<PassCodeInputPage> createState() => _PassCodeInputPageState();
}

class _PassCodeInputPageState extends State<PassCodeInputPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
