// ignore_for_file: unused_import

import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: PrimaryButton,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=7337-3250&t=9rgFnNVDCmfwkXra-4",
)
Widget buildPrimaryButtonCase(BuildContext context) {
  return PrimaryButton(
    content: context.knobs.string(label: 'content', initialValue: 'Text'),
    trailing: FaIcon(
      FontAwesomeIcons.arrowRight,
      color: AppTheme.of(context).text.inverse,
    ),
  );
}
