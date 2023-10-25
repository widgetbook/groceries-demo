import 'package:flutter/widgets.dart';
import 'package:groceries_app/core/core.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Card,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-2014&mode=dev',
)
Widget card(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'This is some text',
          style: AppTheme.of(context).typography.bodyMedium16,
        ),
      ),
    ),
  );
}
