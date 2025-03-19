import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'state/state.dart';
import 'views/views.dart';

class BasketScreen extends ConsumerWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final basket = ref.watch(basketProvider);
    final notifier = ref.read(basketProvider.notifier);

    return basket.isEmpty
        ? BasketEmptyView(
            onStartShopping: () => context.go('/shop'),
          )
        : BasketDataView(
            items: basket.items,
            delivery: basket.deliveryFees,
            subTotal: basket.subTotal,
            onFruitAdded: notifier.addFruit,
            onFruitRemoved: notifier.removeFruit,
            onContinueToShipping: notifier.clear,
          );
  }
}
