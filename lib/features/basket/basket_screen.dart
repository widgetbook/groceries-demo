import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'state/state.dart';
import 'views/views.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = BasketState.of(context);

    return state.basket.isEmpty
        ? BasketEmptyView(
            onStartShopping: () => context.go('/shop'),
          )
        : BasketDataView(
            basket: state.basket,
            delivery: state.deliveryFees,
            subTotal: state.subTotal,
            onFruitAdded: state.addFruit,
            onFruitRemoved: state.removeFruit,
            onContinueToShipping: () => {
              // TODO
            },
          );
  }
}
