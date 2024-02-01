
import 'package:flutter/material.dart';

class ListsScreen extends StatelessWidget {
  static String name = "lists_screen";

  ListsScreen({Key? key});

  final List<String> birthdayTypes = [
    'Karaoke', 'Roomscape', 'Noche de pijamas', 'Paintball', 'Laser tag', 'Fiesta temática', 'Pasar una noche fuera', 'Fiesta de disfraces', 'Viaje de un día', 'Salir de fiesta', 'Local con amigos', 'Barbacoa', 'Picnic', 'Ir de acampada', 'Bolera', 'Parque de ocio para adultos', 'Fiesta en la piscina', 'Obra de teatro', 'Concierto y festivales', 'Brunch', 'Taller de cocina', 'Ruta turística por tu ciudad', 'Cena en la playa'
  ];

  final List<String> birthdayItems = [
    'Invitaciones para enviar a tus amigos y familiares', 'Tema o decoración para la fiesta', 'Pastel o golosinas para la fiesta', 'Bebidas y alimentos para servir', 'Juegos y actividades para entretener a los invitados', 'Música y sistema de sonido', 'Regalos para el cumpleañero', 'Servicio de catering o ayuda para preparar y servir la comida', 'Mesas y sillas para los invitados', 'Servicio de limpieza para después de la fiesta', 'Decoraciones y globos', 'Servicio de fotografía o foto booth para capturar recuerdos de la fiesta', 'Invitaciones y tarjetas de agradecimiento para enviar después de la fiesta', 'Favores para los invitados', 'Proyector o pantalla para ver películas o presentaciones', 'Accesorios para disfraces o ropa temática, si la fiesta tiene un tema de disfraz'
  ];

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
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: birthdayTypes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Card(
                    child: ListTile(
                      title: Text(birthdayTypes[index]),
                    ),
                  ),
                );
              },
            ),
          ),
          // Lista Vertical
          Expanded(
            child: ListView.builder(
              itemCount: birthdayItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(birthdayItems[index]),
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
