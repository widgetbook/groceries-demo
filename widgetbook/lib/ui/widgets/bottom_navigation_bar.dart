import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        text: context.tr('navigationShopLabel'),
      ),
      NavigationItem(
        isSelected: true,
        iconUnselected: FontAwesomeIcons.rectangleList,
        iconSelected: FontAwesomeIcons.solidRectangleList,
        text: context.tr('navigationBasketLabel'),
      ),
      NavigationItem(
        isSelected: false,
        iconUnselected: FontAwesomeIcons.user,
        iconSelected: FontAwesomeIcons.user,
        text: context.tr('navigationUserLabel'),
      ),
    ],
  );
}
