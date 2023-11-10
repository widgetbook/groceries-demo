import 'package:flutter/material.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:groceries_app/repositories/data_store.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: BasketCard,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-2014&mode=dev',
)
Widget buildBasketCardUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: BasketCard(
      fruit: context.knobs.list(
        label: 'Fruit',
        options: DataStore.fruits,
        labelBuilder: (item) => item.name,
      ),
      count: context.knobs.int.input(
        label: 'Count',
      ),
    ),
  );
}
