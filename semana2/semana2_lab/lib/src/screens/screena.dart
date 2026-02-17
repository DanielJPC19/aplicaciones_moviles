import 'package:flutter/material.dart';
import 'package:semana2_lab/src/screens/whatsapp_page.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Whatsapp Page'),),
      body: SafeArea(
        child: Column(children: [
          WhatsappPage()
        ],),
      ),
    );
  }
}