import 'package:flutter/widgets.dart';
import 'package:groceries_app/core/core.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Card,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=60-3200&t=Jvcq3BxVyPK6l2OF-4",
)
Widget card(BuildContext context) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        'This is some text',
        style: AppTheme.of(context).typography.bodyMedium16,
      ),
    ),
  );
}
