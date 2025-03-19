import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'data/mocks.dart';
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
      builder: (context, state) => AboutScreen(
        onBack: () => context.go('/shop'),
      ),
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
          redirect: (context, state) => '/shop',
        ),
        GoRoute(
          path: '/shop',
          builder: (context, state) {
            final state = BasketState.of(context);

            return ShopScreen(
              fruits: MockDataStore.fruits, // TODO: fetch data
              onFruitAdded: state.addFruit,
            );
          },
        ),
        GoRoute(
          path: '/basket',
          builder: (context, state) {
            final state = BasketState.of(context);

            return state.basket.isEmpty
                ? EmptyBasketScreen(
                    onStartShopping: () => context.go('/shop'),
                  )
                : BasketScreen(
                    basket: state.basket,
                    delivery: state.deliveryFees,
                    subTotal: state.subTotal,
                    onFruitAdded: state.addFruit,
                    onFruitRemoved: state.removeFruit,
                    onContinueToShipping: () => {
                      // TODO
                    },
                  );
          },
        ),
        GoRoute(
          path: '/account',
          builder: (context, state) {
            return AccountScreen(
              user: MockDataStore.user, // TODO: fetch data
              onVerifyEmail: () => {
                // TODO
              },
            );
          },
        ),
      ],
    ),
  ],
);
