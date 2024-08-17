import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: EmptyState,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=7235-1918&t=onfGiInlWR5fpa58-4",
)
Widget buildEmptyStateUseCase(BuildContext context) {
  return EmptyState(
    icon: FontAwesomeIcons.triangleExclamation,
    title: context.knobs.string(label: 'title', initialValue: 'Title'),
    message: context.knobs.string(
      label: 'message',
      initialValue: 'A message conveying the state of the product',
    ),
  );
}
