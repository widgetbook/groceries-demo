import 'package:flutter/material.dart';
import 'package:groceries_app/home/home.dart';
import 'package:groceries_app/repositories/data_store.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: FruitCard,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=60-3200&mode=dev',
)
Widget fruitCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: FruitCard(
      fruit: DataStore.fruits[0],
    ),
  );
}
