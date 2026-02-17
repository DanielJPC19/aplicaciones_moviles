import 'package:flutter/material.dart';

class FloatingButtonItem extends StatelessWidget {

  final String text;
  final Icon icon;
  const FloatingButtonItem({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      child: FloatingActionButton(
        elevation: 10,
        backgroundColor: const Color.fromARGB(255, 21, 219, 50),
        onPressed: () {
          Navigator.pushNamed(context, "/new_playlist");
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [icon, SizedBox(width: 4), Text(text)],),
      ),
    );
  }
}