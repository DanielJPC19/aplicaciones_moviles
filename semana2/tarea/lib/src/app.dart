import 'package:flutter/material.dart';
import 'package:tarea/src/screen/login_screen.dart';

import 'screen/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/login": (context) => const LoginScreen()
      },
    );
  }
}