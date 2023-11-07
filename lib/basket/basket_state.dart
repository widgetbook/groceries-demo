import 'package:flutter/material.dart';

import '../models/fruit.dart';
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
  }) : basketSummary = data ?? {};

  Map<Fruit, ProductOrder> basketSummary;

  double get subtotal {
    return basketSummary.values.fold(
      0,
      (previousValue, element) => previousValue + element.total,
    );
  }

  double get delivery => 0.56;

  double get total => subtotal + delivery;

  void addFruit(Fruit fruit) {
    basketSummary.update(
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
    if (!basketSummary.containsKey(fruit)) return;

    basketSummary.update(
      fruit,
      (value) => ProductOrder(
        fruit: fruit,
        quantity: value.quantity - 1,
      ),
    );

    if (basketSummary[fruit]!.quantity <= 0) {
      basketSummary.remove(fruit);
    }

    notifyListeners();
  }

  static BasketState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BasketScope>()!.notifier!;
  }
}
