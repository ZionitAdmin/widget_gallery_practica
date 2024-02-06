//home_view.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../themeprovider/theme_provider.dart';

class HomeView extends StatelessWidget {
  static String name = "home_view";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Home View"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Consumer<ThemeProvider>(
              builder: (context, themeProvider, _) {
                return IconButton(
                  onPressed: () {
                    themeProvider.toggleTheme();
                  },
                  icon: const Icon(Icons.lightbulb_outline),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

