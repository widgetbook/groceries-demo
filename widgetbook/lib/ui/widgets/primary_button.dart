import 'package:flutter/widgets.dart' hide Icon;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import 'package:groceries_app/ui/widgets/primary_button.dart';
import 'package:groceries_app/ui/ui.dart';

@UseCase(
  name: 'interactive',
  type: PrimaryButton,
)
Widget buildPrimaryButtonInteractiveUseCase(BuildContext context) {
  final showLeading = context.knobs.boolean(
    label: 'showLeading',
    initialValue: false,
  );
  
  return PrimaryButton(
    content: context.knobs.string(
      label: 'content',
      initialValue: 'Text',
    ),
    enabled: context.knobs.boolean(
      label: 'enabled',
      initialValue: true,
    ),
    leading: showLeading ? Icon(
      FontAwesomeIcons.circleExclamation,
      color: AppTheme.of(context).text.inverse,
    ) : null,
    onPressed: () => print('Primary button pressed'),
  );
}

@UseCase(
  name: 'default',
  type: PrimaryButton,
)
Widget buildPrimaryButtonDefaultUseCase(BuildContext context) {
  return PrimaryButton(
    content: 'Text',
    onPressed: () => print('Primary button pressed'),
  );
}

@UseCase(
  name: 'disabled',
  type: PrimaryButton,
)
Widget buildPrimaryButtonDisabledUseCase(BuildContext context) {
  return PrimaryButton(
    content: 'Text',
    enabled: false,
    onPressed: () => print('Primary button pressed'),
  );
}

@UseCase(
  name: 'with leading icon',
  type: PrimaryButton,
)
Widget buildPrimaryButtonWithLeadingIconUseCase(BuildContext context) {
  return PrimaryButton(
    content: 'Verify Email',
    leading: Icon(
      FontAwesomeIcons.circleExclamation,
      color: AppTheme.of(context).text.inverse,
    ),
    onPressed: () => print('Primary button pressed'),
  );
}