import 'package:flutter/material.dart';

class ListsView extends StatelessWidget {
  static String name = "lists_view";

  final ScrollController _scrollController = ScrollController();

  final List<String> birthdayTypes = [
    'Karaoke', 'Roomscape', 'Noche de pijamas', 'Paintball', 'Laser tag',
    'Fiesta temática', 'Pasar una noche fuera', 'Fiesta de disfraces',
    'Viaje de un día', 'Salir de fiesta', 'Local con amigos', 'Barbacoa',
    'Picnic', 'Ir de acampada', 'Bolera', 'Parque de ocio para adultos',
    'Fiesta en la piscina', 'Obra de teatro', 'Concierto y festivales',
    'Brunch', 'Taller de cocina', 'Ruta turística por tu ciudad', 'Cena en la playa'
  ];

  final List<String> birthdayItems = [
    'Karaoke', 'Roomscape', 'Noche de pijamas', 'Paintball', 'Laser tag',
    'Fiesta temática', 'Pasar una noche fuera', 'Fiesta de disfraces',
    'Viaje de un día', 'Salir de fiesta', 'Local con amigos', 'Barbacoa',
    'Picnic', 'Ir de acampada', 'Bolera', 'Parque de ocio para adultos',
    'Fiesta en la piscina', 'Obra de teatro', 'Concierto y festivales',
    'Brunch', 'Taller de cocina', 'Ruta turística por tu ciudad', 'Cena en la playa'
  ];

  ListsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Tipos de cumpleaños',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: Scrollbar(
              controller: _scrollController,
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: birthdayTypes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(birthdayTypes[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Cosas para un cumpleaños',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: birthdayItems.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(birthdayItems[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
