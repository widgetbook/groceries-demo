import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../basket/basket.dart';
import 'state/state.dart';
import 'views/views.dart';

class ShopScreen extends ConsumerWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(fruitsProvider);
    final notifier = ref.read(basketProvider.notifier);

    return value.map(
      loading: (_) => const ShopLoadingView(),
      error: (_) => const ShopErrorView(),
      data: (data) => data.value.isEmpty
          ? const ShopEmptyView()
          : ShopDataView(
              fruits: data.value,
              onFruitAdded: notifier.addFruit,
            ),
    );
  }
}
