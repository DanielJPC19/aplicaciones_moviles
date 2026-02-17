import 'package:flutter/material.dart';
import 'package:semana3_lab/src/screens/main_screen.dart';
import 'package:semana3_lab/src/screens/new_playlist_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => SafeArea(child: const MainScreen()),
        "/new_playlist": (context) => SafeArea(child: const NewPlaylistScreen()),
      },
    );
  }
}