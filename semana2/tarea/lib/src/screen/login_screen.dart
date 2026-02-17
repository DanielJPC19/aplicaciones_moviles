import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Log In Screen")),
      body: SafeArea(
        child: Column(
          children: [Text("Text 1"), Text("Text 2"), Text("Text 3")],
        ),
      ),
    );
  }
}
