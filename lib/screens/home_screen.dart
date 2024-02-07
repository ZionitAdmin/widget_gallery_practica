import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../widgets/sidebar.dart';

class HomeScreen extends StatelessWidget {
  static String name = "home_screen";
  final Widget child;

  const HomeScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget App"),
      ),
      drawer: const SideBar(),
      body: child,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).go('/');
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}

