import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Counter,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=7337-3250&t=9rgFnNVDCmfwkXra-4",
)
Widget buildCounterCase(BuildContext context) {
  return Counter(
    value: context.knobs.int.input(label: 'value'),
    onIncrement: () {},
    onDecrement: () {},
  );
}
