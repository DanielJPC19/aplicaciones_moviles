import 'package:flutter/material.dart';

class MainAppbarItem extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  
  const MainAppbarItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: const Color.fromARGB(255, 21, 219, 50),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}