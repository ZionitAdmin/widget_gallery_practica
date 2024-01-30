// TODO Implement this library.
// buttons_screen.dart
import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static String name = "buttons_screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botones'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Acción del botón
              },
              child: Text('Botón Elevado'),
            ),
            TextButton(
              onPressed: () {
                // Acción del botón
              },
              child: Text('Botón de Texto'),
            ),
            // Agrega más tipos de botones según sea necesario
            CustomButton(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.home),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Acción del botón personalizado
      },
      style: ElevatedButton.styleFrom(
        // Personaliza el estilo del botón aquí
        primary: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        'Botón Personalizado',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
