import 'package:flutter/widgets.dart' hide Icon;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Icon,
)
Widget buildIconUseCase(BuildContext context) {
  return const Icon(
    FontAwesomeIcons.user,
  );
}
