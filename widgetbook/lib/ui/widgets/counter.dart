import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Counter,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7284-8778&t=N6qwmLP7MP59ClWB-4',
)
Widget buildCounterCase(BuildContext context) {
  return Counter(
    value: context.knobs.int.input(label: 'value'),
    onIncrement: () {},
    onDecrement: () {},
  );
}
