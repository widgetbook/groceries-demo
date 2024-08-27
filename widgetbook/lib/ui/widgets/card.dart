import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Card,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7340-24498&t=N6qwmLP7MP59ClWB-4',
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
