import 'package:flutter/material.dart';
import 'package:semana2_lab/src/screens/screena.dart';
import 'package:semana2_lab/src/screens/screenb.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ScreenB(),
    );
  }
}