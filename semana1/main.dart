import 'package:flutter/material.dart';

void main() {
  runApp(
    // Material UI --> Google
    MaterialApp(
      home: FirstScreen(), // Widget --> Elemento retornable a la pantalla
    )
  );
  print("Hola mundo");
}

// Widgets sin Estado
// Estado --> Valores (variables -> dinámico en el tiempo) que voy a mostrar en la pantalla
class FirstScreen extends StatelessWidget{
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text("Mi primera app"),),
          body: Column(
            children: [
              Text("Hola"),
              Text("Mundo"),
              Text("!!"),
              ElevatedButton(
                onPressed: (){
                  print("Click");
                },
                child: Text("Click me"),
              ),
              Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Chess_pieces_close_up.jpg/2560px-Chess_pieces_close_up.jpg"),
              Image.asset(
                'assets/logo.jpg', // Ruta relativa
                width: 200,
                height: 100,
                fit: BoxFit.contain, // Ajusta la imagen dentro de sus límites
              ),
            ],
          ),
        );
    }
}