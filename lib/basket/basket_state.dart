import 'package:flutter/material.dart';
import 'package:groceries_app/basket/basket_scope.dart';
import 'package:groceries_app/models/fruit.dart';

class BasketState extends ChangeNotifier {
  Map<Fruit, int> data;

  BasketState({
    Map<Fruit, int>? data,
  }) : data = data ?? {};

  void addFruit(Fruit fruit) {
    if (data.containsKey(fruit)) {
      data[fruit] = data[fruit]! + 1;
    } else {
      data[fruit] = 1;
    }
    notifyListeners();
  }

  void removeFruit(Fruit fruit) {
    if (data.containsKey(fruit)) {
      if (data[fruit] == 1) {
        data.remove(fruit);
      } else {
        data[fruit] = data[fruit]! - 1;
      }
    }
    notifyListeners();
  }

  static BasketState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BasketScope>()!.notifier!;
  }
}
