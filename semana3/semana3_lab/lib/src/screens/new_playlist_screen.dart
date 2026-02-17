import 'package:flutter/material.dart';
import 'package:semana3_lab/src/components/new_playlist_form_item.dart';

class NewPlaylistScreen extends StatefulWidget {
  const NewPlaylistScreen({super.key});

  @override
  State<StatefulWidget> createState() => _NewPlaylistScreenState();
}

class _NewPlaylistScreenState extends State<NewPlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nueva Playlist"),
        backgroundColor: const Color.fromARGB(255, 21, 219, 50),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: NewPlaylistFormItem(
          onSubmit: (String name, String description) { // Aquí se crea el callback que se envía al Widget
            print("Nombre: $name, Descripción: $description");
          },
        ),
      ),
    );
  }
}
