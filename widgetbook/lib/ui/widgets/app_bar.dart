import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AppBar,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7271-82082&t=N6qwmLP7MP59ClWB-4',
)
Widget buildAppBarUseCase(BuildContext context) {
  return AppBar(
    title: context.knobs.string(
      label: 'title',
      initialValue: 'Title',
    ),
  );
}
