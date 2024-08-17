import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: DesignSystemDivider,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=7271-82082&t=Jj5fjVUaGAsV0QSp-4",
)
Widget buildDividerUseCase(BuildContext context) {
  return const DesignSystemDivider();
}
