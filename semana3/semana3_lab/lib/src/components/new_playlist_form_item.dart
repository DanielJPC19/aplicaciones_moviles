import 'package:flutter/material.dart';

class NewPlaylistFormItem extends StatefulWidget {
  final void Function(String, String)
  onSubmit; // Funcón de callback para enviar los datos del formulario

  const NewPlaylistFormItem({super.key, required this.onSubmit});

  @override
  State<StatefulWidget> createState() => _NewPlaylistFormItemState();
}

class _NewPlaylistFormItemState extends State<NewPlaylistFormItem> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: "Nombre de la playlist"),
          ),
          TextField(
            controller: _descriptionController,
            decoration: InputDecoration(
              labelText: "Descripción de la playlist",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              widget.onSubmit(
                _nameController.text,
                _descriptionController.text,
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Playlist creada: ${_nameController.text}")),
              );
              // El widget es una propiedad de la clase State, que nos hace referencia al widget padre, en nuestro caso el formulario
              Navigator.pop(context);
            },
            child: Text("Crear playlist"),
          ),
        ],
      ),
    );
  }
}
