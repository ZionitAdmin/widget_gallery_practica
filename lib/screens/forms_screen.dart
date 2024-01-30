// forms_screen.dart
import 'package:flutter/material.dart';


class FormsScreen extends StatelessWidget {
  static String name = "forms_screen";
  final _formKey = GlobalKey<FormState>();

  FormsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formularios'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nombre completo'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese su nombre';
                  }
                  return null;
                },
              ),
              // Agrega más campos según sea necesario

              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Guardado con éxito'),
                    ));
                  }
                },
                child: Text('Guardar'),
              ),
            ],
          ),
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
