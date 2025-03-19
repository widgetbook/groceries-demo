import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/l10n/app_localizations.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: BottomNavigationBar,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7271-52117&t=N6qwmLP7MP59ClWB-4',
)
Widget buildBottomNavigationBarUseCase(BuildContext context) {
  return BottomNavigationBar(
    navItems: [
      NavigationItem(
        isSelected: false,
        iconUnselected: FontAwesomeIcons.lemon,
        iconSelected: FontAwesomeIcons.solidLemon,
        text: AppLocalizations.of(context)!.navigationShopLabel,
      ),
      NavigationItem(
        isSelected: true,
        iconUnselected: FontAwesomeIcons.rectangleList,
        iconSelected: FontAwesomeIcons.solidRectangleList,
        text: AppLocalizations.of(context)!.navigationBasketLabel,
      ),
      NavigationItem(
        isSelected: false,
        iconUnselected: FontAwesomeIcons.user,
        iconSelected: FontAwesomeIcons.user,
        text: AppLocalizations.of(context)!.navigationUserLabel,
      ),
    ],
  );
}
