import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_gallery_sa/router/app_router.dart';
import 'package:widget_gallery_sa/themeprovider/theme_provider.dart';

void main() {
  runApp(const MainApp());
}class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
      ),
    );
  }
}
