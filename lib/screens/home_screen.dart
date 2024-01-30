// home_screen.dart
import 'package:flutter/material.dart';
import 'package:widget_gallery_sa/widgets/sidebar.dart';

class HomeScreen extends StatelessWidget {
  static String name = "home_screen";
  final Widget child;

  const HomeScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget App"),
        actions: [
          IconButton(
            onPressed: () {
              // Implementa aquí la lógica para cambiar el tema de la aplicación
            },
            icon: const Icon(Icons.lightbulb_outline),
          ),
        ],
      ),
      drawer: const SideBar(),
      body: child,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
