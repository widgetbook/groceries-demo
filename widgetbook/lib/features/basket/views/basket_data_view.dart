import 'package:flutter/widgets.dart';
import 'package:groceries_app/data/mocks.dart';
import 'package:groceries_app/features/features.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: BasketDataView,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6809-5504&t=zUakLdAaKjMZAqSq-4',
)
Widget buildBasketDataViewUseCase(BuildContext context) {
  final items = Map.fromEntries(
    MockDataStore.fruits
        .where((fruit) => fruit.name != 'Banana') //
        .map(
          (fruit) => MapEntry(
            fruit,
            context.knobs.int.input(
              label: '${fruit.name} quantity',
              initialValue: 2,
            ),
          ),
        ),
  );

  return BasketDataView(
    items: items,
    delivery: context.knobs.double.input(
      label: 'Delivery fees',
      initialValue: 5,
    ),
    subTotal: context.knobs.double.input(
      label: 'Subtotal',
      initialValue: 50,
    ),
    onFruitAdded: (_) {},
    onFruitRemoved: (_) {},
    onContinueToShipping: () {},
  );
}
