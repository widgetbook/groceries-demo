import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Card,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=7235-1918&t=onfGiInlWR5fpa58-4",
)
Widget buildCardUseCase(BuildContext context) {
  return const Card(
    child: Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        'This is some text',
      ),
    ),
  );
}
