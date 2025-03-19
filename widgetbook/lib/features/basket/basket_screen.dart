import 'package:flutter/widgets.dart';
import 'package:groceries_app/data/mocks.dart';
import 'package:groceries_app/features/features.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Empty',
  type: EmptyBasketScreen,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6809-5986&t=zUakLdAaKjMZAqSq-4',
)
Widget buildBasketScreenEmptyUseCase(BuildContext context) {
  return EmptyBasketScreen(
    onStartShopping: () => {},
  );
}

@UseCase(
  name: 'Non-empty',
  type: BasketScreen,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6809-5504&t=zUakLdAaKjMZAqSq-4',
)
Widget buildBasketScreenUseCase(BuildContext context) {
  return BasketScope(
    state: BasketState(
      // Get all fruits except Banana and create a map with the quantity knob
      initialBasket: Map.fromEntries(
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
      ),
    ),
    child: Builder(
      builder: (context) {
        final state = BasketState.of(context);

        return BasketScreen(
          basket: state.basket,
          delivery: state.deliveryFees,
          subTotal: state.subTotal,
          onFruitAdded: state.addFruit,
          onFruitRemoved: state.removeFruit,
          onContinueToShipping: () => {},
        );
      },
    ),
  );
}
