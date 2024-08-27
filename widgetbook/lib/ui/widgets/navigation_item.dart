import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: NavigationItem,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7395-4299&t=N6qwmLP7MP59ClWB-4',
)
Widget buildNavigationItemUseCase(BuildContext context) {
  return NavigationItem(
    isSelected: context.knobs.boolean(
      label: 'isSelected',
    ),
    iconSelected: FontAwesomeIcons.solidLemon,
    iconUnselected: FontAwesomeIcons.lemon,
    text: context.knobs.string(
      label: 'text',
      initialValue: 'Account',
    ),
  );
}
