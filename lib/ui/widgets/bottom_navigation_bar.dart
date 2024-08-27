import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../l10n/app_localizations.dart';
import '../ui.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppTheme.of(context).spacing.l,
        vertical: AppTheme.of(context).spacing.xxs,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationItem(
            isSelected: true,
            iconUnselected: FontAwesomeIcons.shop,
            iconSelected: FontAwesomeIcons.shop,
            text: AppLocalizations.of(context)!.navigationShopLabel,
          ),
          NavigationItem(
            isSelected: false,
            iconUnselected: FontAwesomeIcons.basketShopping,
            iconSelected: FontAwesomeIcons.basketShopping,
            text: AppLocalizations.of(context)!.navigationBasketLabel,
          ),
          NavigationItem(
            isSelected: false,
            iconUnselected: FontAwesomeIcons.user,
            iconSelected: FontAwesomeIcons.user,
            text: AppLocalizations.of(context)!.navigationUserLabel,
          ),
        ],
      ),
    );
  }
}
