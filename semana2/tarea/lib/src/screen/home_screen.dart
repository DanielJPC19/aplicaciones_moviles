import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: SafeArea(
        child: Column(
          children: [
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Text("Log In"),
            ),
          ],
        ),
      ),
    );
  }
}
