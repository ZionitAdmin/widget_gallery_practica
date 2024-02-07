import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_gallery_sa/helpers/drawer.dart';
class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: selectedIndex,
      onDestinationSelected: (value) {
        setState(() {
          selectedIndex = value;
        });
        context.pushNamed(onHandleDrawerSelect(value));
        Navigator.pop(context);
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
          label: Text("Formularios"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.list),
          label: Text("Listas"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.text_fields),
          label: Text("Botones"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.image),
          label: Text("Imágenes"),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.table_chart),
          label: Text("Tabla"),
        ),
      ],
    );
  }
}


