import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:widgetbook/next.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

part 'quantity.stories.book.dart';

final meta = Meta<Quantity>();

final $Default = QuantityStory(
  name: 'Default',
);
@UseCase(
  name: 'Default',
  type: Quantity,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-1996&mode=dev',
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
