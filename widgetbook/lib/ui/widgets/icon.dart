import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: DesignSystemIcon,
)
Widget buildIconUseCase(BuildContext context) {
  return const DesignSystemIcon(
    FontAwesomeIcons.user,
  );
}
