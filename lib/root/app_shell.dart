import 'package:flutter/widgets.dart' hide Icon;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../features/basket/basket.dart';
import '../l10n/app_localizations.dart';
import '../ui/ui.dart';
import 'app_route.dart';

class AppShell extends ConsumerWidget {
  const AppShell({
    super.key,
    required this.activeRoute,
    required this.onRouteTap,
    required this.child,
  });

  final AppRoute activeRoute;
  final void Function(AppRoute route) onRouteTap;
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final basket = ref.watch(basketProvider);

    return SafeArea(
      child: PageShell(
        title: 'Grocery App',
        action: Icon(
          FontAwesomeIcons.circleQuestion,
          onTap: () => onRouteTap(AppRoute.about),
        ),
        navItems: [
          NavigationItem(
            isSelected: activeRoute == AppRoute.shop,
            iconUnselected: FontAwesomeIcons.lemon,
            iconSelected: FontAwesomeIcons.solidLemon,
            text: AppLocalizations.of(context)!.navigationShopLabel,
            onTap: () => onRouteTap(AppRoute.shop),
          ),
          NavigationItem(
            isSelected: activeRoute == AppRoute.basket,
            iconUnselected: FontAwesomeIcons.rectangleList,
            iconSelected: FontAwesomeIcons.solidRectangleList,
            text: AppLocalizations.of(context)!.navigationBasketLabel,
            onTap: () => onRouteTap(AppRoute.basket),
            showBadge: !basket.isEmpty,
          ),
          NavigationItem(
            isSelected: activeRoute == AppRoute.account,
            iconUnselected: FontAwesomeIcons.user,
            iconSelected: FontAwesomeIcons.solidUser,
            text: AppLocalizations.of(context)!.navigationUserLabel,
            onTap: () => onRouteTap(AppRoute.account),
          ),
        ],
        child: child,
      ),
    );
  }
}
