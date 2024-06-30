import 'package:flutter/widgets.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Badge,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=112-3469&t=Jvcq3BxVyPK6l2OF-4",
)
Widget badge(BuildContext context) {
  return Badge(
    number: context.knobs.int.input(
      label: 'Number',
    ),
  );
}
