import 'package:flutter/widgets.dart';
import 'package:groceries_app/features/account/account.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AccountCard,
)
Widget buildAccountCardUseCase(BuildContext context) {
  return AccountCard(
    name: context.knobs.string(
      label: 'name',
      initialValue: 'John Doe',
    ),
  );
}
