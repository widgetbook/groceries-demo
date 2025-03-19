import 'package:flutter/widgets.dart';

import '../../data/data.dart';
import '../basket/basket.dart';
import 'views/views.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FruitRepository().getAll(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const ShopLoadingView();
        }

        if (snapshot.hasError) {
          return const ShopErrorView();
        }

        if (snapshot.data!.isEmpty) {
          return const ShopEmptyView();
        }

        final state = BasketState.of(context);

        return ShopDataView(
          fruits: snapshot.data!,
          onFruitAdded: state.addFruit,
        );
      },
    );
  }
}
