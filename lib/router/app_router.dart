import 'package:go_router/go_router.dart';
import 'package:widget_gallery_sa/screens/home_screen.dart';
import 'package:widget_gallery_sa/views/home_view.dart';

final GoRouter appRouter = GoRouter(initialLocation: '/', routes: [
  StatefulShellRoute.indexedStack(
      builder: (_, __, navigationShell) => HomeScreen(
            child: navigationShell,
          ),
      branches: <StatefulShellBranch>[
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/',
            name: HomeView.name,
            builder: (context, state) => const HomeView(),
          )
        ]),
      ]),
]);
