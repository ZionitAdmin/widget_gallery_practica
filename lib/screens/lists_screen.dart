import 'package:flutter/material.dart';

class ListsScreen extends StatelessWidget {
  static String name = "lists_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas'),
      ),
      body: Column(
        children: [
          // Lista Horizontal
          SizedBox(
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 22, // Ajusta el número de elementos según tus necesidades
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text('Elemento $index'),
                  ),
                );
              },
            ),
          ),
          // Lista Vertical
          Expanded(
            child: ListView.builder(
              itemCount: 15, // Ajusta el número de elementos según tus necesidades
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Elemento $index'),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
