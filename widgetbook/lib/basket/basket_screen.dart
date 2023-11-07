import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:groceries_app/basket/basket_scope.dart';
import 'package:groceries_app/basket/basket_state.dart';
import 'package:groceries_app/fixtures/fruits.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'filled',
  type: BasketScreen,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=60-1089&mode=dev',
)
Widget buildFilledBasketScreenUseCase(BuildContext context) {
  final mango = getMango(context);
  final avocado = getAvocado(context);

  return BasketScope(
    state: BasketState(
      data: {
        mango: ProductOrder(
          fruit: mango,
          quantity: context.knobs.double
              .input(
                label: 'Mango Quantity',
                initialValue: 1,
              )
              .toInt(),
        ),
        avocado: ProductOrder(
          fruit: avocado,
          quantity: context.knobs.double
              .input(
                label: 'Avocado Quantity',
                initialValue: 2,
              )
              .toInt(),
        ),
      },
    ),
    child: Builder(
      builder: (context) {
        final basketState = BasketState.of(context);
        return BasketScreen(
          fruits: basketState.basketSummary,
          delivery: basketState.delivery,
          total: basketState.total,
          subTotal: basketState.subtotal,
        );
      },
    ),
  );
}

@UseCase(
  name: 'empty',
  type: BasketScreen,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-2186&mode=dev',
)
Widget buildEmptyBasketScreenUseCase(BuildContext context) {
  return BasketScope(
    child: Builder(
      builder: (context) {
        final basketState = BasketState.of(context);
        return BasketScreen(
          fruits: basketState.basketSummary,
          delivery: basketState.delivery,
          total: basketState.total,
          subTotal: basketState.subtotal,
        );
      },
    ),
  );
}
