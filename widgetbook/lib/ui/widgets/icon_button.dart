import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: IconButton,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7337-3250&t=N6qwmLP7MP59ClWB-4',
)
Widget buildIconButtonUseCase(BuildContext context) {
  return IconButton(
    icon: FontAwesomeIcons.user,
    onPressed: () {},
  );
}
