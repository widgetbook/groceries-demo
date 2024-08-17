import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: DesignSystemNavigationItem,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=7395-4299&t=Jj5fjVUaGAsV0QSp-4",
)
Widget buildDesignSystemNavigationItemUseCase(BuildContext context) {
  return DesignSystemNavigationItem(
    isSelected: context.knobs.boolean(
      label: 'isSelected',
    ),
    iconSelected: FontAwesomeIcons.solidUser,
    iconUnselected: FontAwesomeIcons.user,
    text: context.knobs.string(
      label: 'text',
      initialValue: 'Account',
    ),
  );
}
