import 'package:flutter/material.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Quantity,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=146-1186&t=Jvcq3BxVyPK6l2OF-4",
)
Widget buildQuantityUseCase(BuildContext context) {
  return Quantity(
    value: context.knobs.int.slider(
      label: 'Value',
      initialValue: 2,
      max: 1000,
    ),
  );
}
