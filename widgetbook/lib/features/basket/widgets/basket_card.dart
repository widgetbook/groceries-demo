import 'package:flutter/widgets.dart';
import 'package:groceries_app/features/features.dart';
import 'package:groceries_app/repositories/data_store.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: BasketCard,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=7271-82082&t=Jj5fjVUaGAsV0QSp-4",
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
      onFruitAdded: () {},
      onFruitRemoved: () => {},
    ),
  );
}
