import 'package:flutter/material.dart';

class TextFieldParam extends StatelessWidget {

  final String text;
  final String icon;

  const TextFieldParam({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              labelText: text,
            ),
          ),
        ),
        SizedBox(
          width: 40,
          height: 40,
          child: CircleAvatar(
            radius: 2,
            backgroundImage: AssetImage(icon),
          ),
        )
      ],
    );
  }
}