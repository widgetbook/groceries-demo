import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:groceries_app/repositories/data_store.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Filled',
  type: BasketScreen,
  path: 'basket/screens',
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=60-1089&mode=dev',
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
  path: 'basket/screens',
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-2186&mode=dev',
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
