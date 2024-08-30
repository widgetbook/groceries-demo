import 'package:flutter/widgets.dart';
import 'package:groceries_app/features/features.dart';
import 'package:groceries_app/repositories/data_store.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Empty',
  type: BasketView,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6809-5986&t=zUakLdAaKjMZAqSq-4',
)
Widget buildBasketViewEmptyUseCase(BuildContext context) {
  return const BasketView(
    basket: {},
    delivery: 0,
    subTotal: 0,
  );
}

@UseCase(
  name: 'Non-empty',
  type: BasketView,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6809-5504&t=zUakLdAaKjMZAqSq-4',
)
Widget buildBasketViewUseCase(BuildContext context) {
  final fruit_1 = DataStore.fruits[0];
  final fruit_2 = DataStore.fruits[1];

  return BasketScope(
    state: BasketState(
      data: {
        fruit_1: ProductOrder(
          fruit: fruit_1,
          quantity: context.knobs.int.input(
            label: '${fruit_1.name} Quantity',
            initialValue: 1,
          ),
        ),
        fruit_2: ProductOrder(
          fruit: fruit_2,
          quantity: context.knobs.int.input(
            label: '${fruit_2.name} Quantity',
            initialValue: 2,
          ),
        ),
      },
    ),
    child: Builder(
      builder: (context) {
        final basketState = BasketState.of(context);

        return BasketView(
          basket: basketState.store,
          delivery: basketState.delivery,
          subTotal: basketState.subTotal,
        );
      },
    ),
  );
}
