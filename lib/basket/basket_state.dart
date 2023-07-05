import 'package:flutter/material.dart';
import 'package:groceries_app/basket/basket_scope.dart';
import 'package:groceries_app/models/fruit.dart';

class ProductOrder {
  final int quantity;
  final double total;

  ProductOrder({
    required this.quantity,
    required this.total,
  });
}

class BasketState extends ChangeNotifier {
  Map<Fruit, ProductOrder> basketSummary;
  double get subtotal {
    return basketSummary.values.fold(
      0,
      (previousValue, element) => previousValue + element.total,
    );
  }

  double get delivery => 0.56;

  double get total => subtotal + delivery;

  BasketState({
    Map<Fruit, ProductOrder>? data,
  }) : basketSummary = data ?? {};

  void addFruit(Fruit fruit) {
    if (basketSummary.containsKey(fruit)) {
      final order = basketSummary[fruit];
      basketSummary[fruit] = ProductOrder(
        quantity: order!.quantity + 1,
        total: order.total + fruit.price,
      );
    } else {
      basketSummary[fruit] = ProductOrder(
        quantity: 1,
        total: fruit.price,
      );
    }
    notifyListeners();
  }

  void removeFruit(Fruit fruit) {
    if (basketSummary.containsKey(fruit)) {
      final order = basketSummary[fruit];
      if (order!.quantity > 1) {
        basketSummary[fruit] = ProductOrder(
          quantity: order.quantity - 1,
          total: order.total - fruit.price,
        );
      } else {
        basketSummary.remove(fruit);
      }
    }
    notifyListeners();
  }

  static BasketState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BasketScope>()!.notifier!;
  }
}
