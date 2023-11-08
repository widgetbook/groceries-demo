import 'package:flutter/widgets.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: AppBar)
Widget appBarUseCase(BuildContext context) {
  return AppBar(
    title: context.knobs.string(
      label: 'title',
      initialValue: 'Groceries App',
    ),
    basketSize: 9,
  );
}
