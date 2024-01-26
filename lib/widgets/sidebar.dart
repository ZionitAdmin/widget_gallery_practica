import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_gallery_sa/helpers/drawer.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
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
          )
        ]);
  }
}
