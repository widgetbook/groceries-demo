import 'package:go_router/go_router.dart';

import '../features/features.dart';
import 'app_route.dart';
import 'app_shell.dart';

final router = GoRouter(
  initialLocation: AppRoute.shop.path,
  routes: [
    GoRoute(
      path: AppRoute.about.path,
      builder: (context, _) => AboutScreen(
        onGoBack: () => context.go(AppRoute.shop.path),
      ),
    ),
    ShellRoute(
      builder: (context, state, child) {
        return AppShell(
          activeRoute: AppRoute.byPath(state.fullPath!) ?? AppRoute.shop,
          onRouteTap: (route) => context.go(route.path),
          child: child,
        );
      },
      routes: [
        GoRoute(
          path: AppRoute.shop.path,
          builder: (_, __) => const ShopScreen(),
        ),
        GoRoute(
          path: AppRoute.basket.path,
          builder: (_, __) => const BasketScreen(),
        ),
        GoRoute(
          path: AppRoute.account.path,
          builder: (_, __) => const AccountScreen(),
        ),
      ],
    ),
  ],
);
