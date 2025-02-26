import 'package:flutter/material.dart';

import '../../../data/fruit.dart';
import 'basket_scope.dart';

class BasketState extends ChangeNotifier {
  BasketState({
    Map<Fruit, int>? initialBasket,
  }) : basket = initialBasket ?? {};

  /// Map between [Fruit] and its quantity
  final Map<Fruit, int> basket;

  static BasketState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BasketScope>()!.notifier!;
  }

  double get subTotal {
    return basket.entries.fold(
      0,
      (total, entry) {
        final price = entry.key.price;
        final quantity = entry.value;

        return total + (price * quantity);
      },
    );
  }

  double get deliveryFees => 0.56;

  void addFruit(Fruit fruit) {
    basket.update(
      fruit,
      (quantity) => quantity + 1,
      ifAbsent: () => 1,
    );

    notifyListeners();
  }

  void removeFruit(Fruit fruit) {
    if (!basket.containsKey(fruit)) return;

    basket.update(
      fruit,
      (quantity) => quantity - 1,
    );

    if (basket[fruit]! <= 0) {
      basket.remove(fruit);
    }

    notifyListeners();
  }
}
