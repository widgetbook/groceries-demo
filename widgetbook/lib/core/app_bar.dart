import 'package:flutter/widgets.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AppBar,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=277-3056&mode=design&t=xEVe42MecBrfe39j-4',
)
Widget appBarUseCase(BuildContext context) {
  return AppBar(
    title: context.knobs.string(
      label: 'Title',
      initialValue: 'Groceries App',
    ),
    basketSize: context.knobs.int.input(
      label: 'Basket Size',
      initialValue: 1,
    ),
  );
}
