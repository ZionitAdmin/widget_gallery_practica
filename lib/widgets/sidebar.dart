// sidebar.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_gallery_sa/helpers/drawer.dart';


class SideBar extends StatelessWidget {
  const SideBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(selectedIndex: 0,
      onDestinationSelected: (value) {
        context.pushNamed(onHandleDrawerSelect(value));
      },
      children: const [
        Padding(
          padding: EdgeInsets.all(16),
          child: Text('Header'),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.home),
          label: Text("Inicio"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.add),
          label: Text("Botones"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.list),
          label: Text("Listas"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.text_fields),
          label: Text("Formularios"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.image),
          label: Text("Imágenes"),
        ),
      ],
    );
  }
}
