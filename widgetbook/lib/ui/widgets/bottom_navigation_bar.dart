import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: BottomNavigationBar,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7271-52117&t=N6qwmLP7MP59ClWB-4',
)
Widget buildBottomNavigationBarUseCase(BuildContext context) {
  return const BottomNavigationBar();
}
