import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:groceries_app/repositories/data_store.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Filled',
  type: BasketScreen,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=6809-5504&t=Jvcq3BxVyPK6l2OF-4",
)
Widget buildFilledBasketScreenUseCase(BuildContext context) {
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

        return BasketScreen(
          basket: basketState.store,
          delivery: basketState.delivery,
          subTotal: basketState.subTotal,
        );
      },
    ),
  );
}

@UseCase(
  name: 'Empty',
  type: BasketScreen,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=6809-5986&t=Jvcq3BxVyPK6l2OF-4",
)
Widget buildEmptyBasketScreenUseCase(BuildContext context) {
  return BasketScope(
    child: Builder(
      builder: (context) {
        final basketState = BasketState.of(context);
        return BasketScreen(
          basket: basketState.store,
          delivery: basketState.delivery,
          subTotal: basketState.subTotal,
        );
      },
    ),
  );
}
