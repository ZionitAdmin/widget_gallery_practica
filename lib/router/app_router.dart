import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../screens/buttons_screen.dart';
import '../screens/forms_screen.dart';
import '../screens/home_screen.dart';
import '../screens/images_screen.dart';
import '../screens/lists_screen.dart';
import '../screens/table_screen.dart';
import '../views/home_view.dart';


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
          GoRoute(name: HomeScreen.name,
            path: '/',
            builder: (context, state) => const HomeView(),
          ),
          GoRoute(name:  FormsScreen.name,
            path: '/forms',
            builder: (context, state) => const FormsScreen(),
          ),
          GoRoute( name: ListsScreen.name,
            path: '/lists',
            builder: (context, state) =>  const ListsScreen(),
          ),
          GoRoute(name: ButtonsScreen.name,
            path: '/buttons',
            builder: (context, state) => const ButtonsScreen(),
          ),
          GoRoute(name: ImagesScreen.name,
            path: '/images',
            builder: (context, state) => const ImagesScreen(),
          ),
          GoRoute(name: TableScreen.name,
            path: '/table',
            builder: (context, state) => const TableScreen(),
          ),
        ]),
      ],
    ),
  ],
);
