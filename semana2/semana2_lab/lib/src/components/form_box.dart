import 'package:flutter/material.dart';
import 'package:semana2_lab/src/components/text_field_param.dart';

class FormBox extends StatelessWidget {
  const FormBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Text("Let's Start"),
          Text("Please provide your data"),
          TextFieldParam(text: "email", icon: "assets/imagen1.jpg")
        ],
      ),
    );
  }
}