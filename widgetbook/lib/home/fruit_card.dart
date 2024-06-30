import 'package:flutter/material.dart';
import 'package:groceries_app/home/home.dart';
import 'package:groceries_app/repositories/data_store.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: FruitCard,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=60-3200&t=OwNskhPgyoe2Fkcc-4",
)
Widget fruitCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: FruitCard(
      fruit: DataStore.fruits[0],
    ),
  );
}
