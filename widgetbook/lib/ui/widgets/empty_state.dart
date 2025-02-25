import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: EmptyState,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6809-5957&t=N6qwmLP7MP59ClWB-4',
)
Widget buildEmptyStateUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: EmptyState(
      icon: FontAwesomeIcons.triangleExclamation,
      title: context.knobs.string(
        label: 'title',
        initialValue: 'Title',
      ),
      message: context.knobs.string(
        label: 'message',
        initialValue: 'A detailed message conveying the state',
      ),
    ),
  );
}
