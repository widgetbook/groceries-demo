import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: DesignSystemIconButton,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=7337-3250&t=9rgFnNVDCmfwkXra-4",
)
Widget buildDesignSystemIconButtonUseCase(BuildContext context) {
  return DesignSystemIconButton(
    icon: FontAwesomeIcons.user,
    onPressed: () {},
  );
}
