import 'package:go_router/go_router.dart';

import '../features/features.dart';
import 'app_route.dart';
import 'app_shell.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/about',
      builder: (_, __) => const AboutScreen(),
    ),
    ShellRoute(
      builder: (context, state, child) {
        return AppShell(
          activeRoute: AppRoute.values.firstWhere(
            (route) => route.path == state.fullPath,
            orElse: () => AppRoute.shop,
          ),
          child: child,
          onRouteTap: (route) => context.go(route.path),
        );
      },
      routes: [
        GoRoute(
          path: '/',
          redirect: (_, __) => '/shop',
        ),
        GoRoute(
          path: '/shop',
          builder: (_, __) => const ShopScreen(),
        ),
        GoRoute(
          path: '/basket',
          builder: (_, __) => const BasketScreen(),
        ),
        GoRoute(
          path: '/account',
          builder: (_, __) => const AccountScreen(),
        ),
      ],
    ),
  ],
);
