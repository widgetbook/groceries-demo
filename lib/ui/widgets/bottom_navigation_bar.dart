import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ui.dart';

class DesignSystemBottomNavigationBar extends StatelessWidget {
  const DesignSystemBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppTheme.of(context).spacing.l,
        vertical: AppTheme.of(context).spacing.xxs,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DesignSystemNavigationItem(
            isSelected: true,
            iconUnselected: FontAwesomeIcons.shop,
            iconSelected: FontAwesomeIcons.shop,
            text: 'Shop',
          ),
          DesignSystemNavigationItem(
            isSelected: false,
            iconUnselected: FontAwesomeIcons.basketShopping,
            iconSelected: FontAwesomeIcons.basketShopping,
            text: 'Basket',
          ),
          DesignSystemNavigationItem(
            isSelected: false,
            iconUnselected: FontAwesomeIcons.user,
            iconSelected: FontAwesomeIcons.user,
            text: 'User',
          ),
        ],
      ),
    );
  }
}
