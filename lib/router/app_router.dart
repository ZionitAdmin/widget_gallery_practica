import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_gallery_sa/screens/home_screen.dart';
import '../views/buttons_view.dart';
import '../views/forms_view.dart';
import '../views/home_view.dart';
import '../views/images_view.dart';
import '../views/lists_view.dart';
import '../views/table_view.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  navigatorKey: GlobalKey<NavigatorState>(),
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (_, __, navigationShell) => HomeScreen(
        child: navigationShell,
      ),
      branches: <StatefulShellBranch>[
        StatefulShellBranch(routes: [
          GoRoute(
            name: HomeView.name,
            path: '/',
            builder: (context, state) => const HomeView(),
          ),
          GoRoute(
            name: FormsView.name,
            path: '/forms',
            builder: (context, state) => const FormsView(),
          ),

          GoRoute(
            name: ListsView.name,
            path: '/lists',
            builder: (context, state) => ListsView(),
          ),
          GoRoute(
            name: ButtonsView.name,
            path: '/buttons',
            builder: (context, state) => const ButtonsView(),
          ),
          GoRoute(
            name: ImagesView.name,
            path: '/images',
            builder: (context, state) => const ImagesView(),
          ),
          GoRoute(
            name: TableView.name,
            path: '/table',
            builder: (context, state) => const TableView(),
          ),

          // Agrega aquí las rutas para otras vistas, como ListsView, ButtonsView, etc.
        ]),
      ],
    ),
  ],
);
