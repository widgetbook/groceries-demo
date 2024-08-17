import 'package:flutter/material.dart';

import '../../../repositories/fruit.dart';
import 'basket_scope.dart';

class ProductOrder {
  ProductOrder({
    required this.fruit,
    required this.quantity,
  });

  final Fruit fruit;
  final int quantity;

  double get total => fruit.price * quantity;
}

class BasketState extends ChangeNotifier {
  BasketState({
    Map<Fruit, ProductOrder>? data,
  }) : store = data ?? {};

  Map<Fruit, ProductOrder> store;

  double get subTotal {
    return store.values.fold(
      0,
      (previousValue, element) => previousValue + element.total,
    );
  }

  double get delivery => 0.56;

  static BasketState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BasketScope>()!.notifier!;
  }

  void addFruit(Fruit fruit) {
    store.update(
      fruit,
      (value) => ProductOrder(
        fruit: fruit,
        quantity: value.quantity + 1,
      ),
      ifAbsent: () => ProductOrder(
        fruit: fruit,
        quantity: 1,
      ),
    );

    notifyListeners();
  }

  void removeFruit(Fruit fruit) {
    if (!store.containsKey(fruit)) return;

    store.update(
      fruit,
      (value) => ProductOrder(
        fruit: fruit,
        quantity: value.quantity - 1,
      ),
    );

    if (store[fruit]!.quantity <= 0) {
      store.remove(fruit);
    }

    notifyListeners();
  }
}
