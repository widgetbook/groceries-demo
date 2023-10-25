import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Summary,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=112-6510&mode=dev',
)
Widget buildSummaryUseCase(BuildContext context) {
  return Summary(
    total: context.knobs.double.slider(
      label: 'Total',
      initialValue: 10,
      min: 0,
      max: 1000,
    ),
    delivery: context.knobs.double.slider(
      label: 'Delivery',
      initialValue: 2,
      min: 0,
      max: 10,
    ),
    subTotal: context.knobs.double.slider(
      label: 'Subtotal',
      initialValue: 2,
      min: 0,
      max: 1000,
    ),
  );
}
