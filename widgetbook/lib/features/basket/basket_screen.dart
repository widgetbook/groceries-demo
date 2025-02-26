import 'package:flutter/widgets.dart';
import 'package:groceries_app/data/data_store.dart';
import 'package:groceries_app/features/features.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Empty',
  type: BasketScreen,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6809-5986&t=zUakLdAaKjMZAqSq-4',
)
Widget buildBasketScreenEmptyUseCase(BuildContext context) {
  return BasketScreen(
    basket: const {},
    delivery: 0,
    subTotal: 0,
    onStartShopping: context.knobs.boolean(
      label: 'enabled',
      initialValue: true,
    )
        ? () => {}
        : null,
  );
}

@UseCase(
  name: 'Non-empty',
  type: BasketScreen,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6809-5504&t=zUakLdAaKjMZAqSq-4',
)
Widget buildBasketScreenUseCase(BuildContext context) {
  final fruit_1 = DataStore.fruits[0];
  final fruit_2 = DataStore.fruits[1];

  return BasketScope(
    state: BasketState(
      initialBasket: {
        fruit_1: context.knobs.int.input(
          label: '${fruit_1.name} quantity',
          initialValue: 1,
        ),
        fruit_2: context.knobs.int.input(
          label: '${fruit_2.name} quantity',
          initialValue: 2,
        ),
      },
    ),
    child: Builder(
      builder: (context) {
        final state = BasketState.of(context);

        return BasketScreen(
          basket: state.basket,
          delivery: state.deliveryFees,
          subTotal: state.subTotal,
          onContinueToShipping: context.knobs.boolean(
            label: 'enabled',
            initialValue: true,
          )
              ? () => {}
              : null,
        );
      },
    ),
  );
}
