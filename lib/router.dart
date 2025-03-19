import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'features/about/about.dart';
import 'features/account/account.dart';
import 'features/basket/basket.dart';
import 'features/shop/shop.dart';
import 'l10n/app_localizations.dart';
import 'ui/ui.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/about',
      builder: (_, __) => const AboutScreen(),
    ),
    ShellRoute(
      builder: (context, state, child) {
        return PageShell(
          action: Icon(
            FontAwesomeIcons.circleQuestion,
            onTap: () => context.go('/about'),
          ),
          navItems: [
            NavigationItem(
              isSelected: state.fullPath == '/shop',
              iconUnselected: FontAwesomeIcons.lemon,
              iconSelected: FontAwesomeIcons.solidLemon,
              text: AppLocalizations.of(context)!.navigationShopLabel,
              onTap: () => context.go('/shop'),
            ),
            NavigationItem(
              isSelected: state.fullPath == '/basket',
              iconUnselected: FontAwesomeIcons.rectangleList,
              iconSelected: FontAwesomeIcons.solidRectangleList,
              text: AppLocalizations.of(context)!.navigationBasketLabel,
              onTap: () => context.go('/basket'),
              showBadge: BasketState.of(context).basket.isNotEmpty,
            ),
            NavigationItem(
              isSelected: state.fullPath == '/account',
              iconUnselected: FontAwesomeIcons.user,
              iconSelected: FontAwesomeIcons.solidUser,
              text: AppLocalizations.of(context)!.navigationUserLabel,
              onTap: () => context.go('/account'),
            ),
          ],
          child: child,
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
