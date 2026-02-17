import 'package:flutter/material.dart';
import 'package:semana3_lab/src/components/floating_button_item.dart';
import 'package:semana3_lab/src/components/main_appbar_item.dart';

import '../pages/playlist_page.dart';
import '../pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    ProfilePage(),
    PlaylistPage(),
  ];

  final List<String> _titles = const [
    "Profile",
    "Playlists",
  ];

  final List<String> _texts = const [
    "Editar",
    "Crear",
  ];

  final List<IconData> _icons = const [
    Icons.edit,
    Icons.add,
  ];

  Widget _selectedWidget () {
    return _pages[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbarItem(title: _titles[_currentIndex]),
      body: IndexedStack( // Con esto podemos mantener el estado entre las páginas
        index: _currentIndex, // índice
        children: _pages, // Lista de páginas para cambiar
      ),
      floatingActionButton: FloatingButtonItem(text: _texts[_currentIndex], icon: Icon(_icons[_currentIndex])),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Profile"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Playlists",
          ),
        ],
      ),
    );
  }
}
