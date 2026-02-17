import 'package:flutter/material.dart';
import 'package:semana2_lab/src/components/form_box.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // width: 100,
          // height: 100,
          child: Image.asset("assets/imagen1.jpg"),
        ),
        FormBox(),
        ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('LogIn button pressed'),
                action: SnackBarAction(
                  label: 'Deshacer',
                  onPressed: () {
                    print('Accion de deshacer ejecutada');
                  },
                ),
              ),
            );
          },
          child: const Text("LogIn"),
        ),
      ],
    );
  }
}
