import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/data.dart';
import 'basket.dart';

class BasketNotifier extends Notifier<Basket> {
  BasketNotifier([this.initialBasket = const Basket.empty()]);

  final Basket initialBasket;

  @override
  Basket build() {
    return initialBasket;
  }

  void addFruit(Fruit fruit) {
    state = state.copyWithIncreasedQuantity(fruit);
  }

  void removeFruit(Fruit fruit) {
    state = state.copyWithDecreasedQuantity(fruit);
  }

  void clear() {
    state = const Basket.empty();
  }
}
