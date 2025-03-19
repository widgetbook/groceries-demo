import '../../../data/data.dart';

class Basket {
  const Basket(this.items);
  const Basket.empty() : items = const {};

  /// Map between [Fruit] and its quantity
  final Map<Fruit, int> items;

  bool get isEmpty => items.isEmpty;

  double get deliveryFees => 0.56;

  double get subTotal {
    return items.entries.fold(
      0,
      (total, entry) {
        final price = entry.key.price;
        final quantity = entry.value;

        return total + (price * quantity);
      },
    );
  }

  Basket copyWithIncreasedQuantity(Fruit fruit) {
    return Basket(
      Map.of(items)
        ..update(
          fruit,
          (quantity) => quantity + 1,
          ifAbsent: () => 1,
        ),
    );
  }

  Basket copyWithDecreasedQuantity(Fruit fruit) {
    if (!items.containsKey(fruit)) return this;

    final updatedItems = Map.of(items)
      ..update(
        fruit,
        (quantity) => quantity - 1,
      );

    // Remove the item if the quantity is 0
    if (updatedItems[fruit]! <= 0) {
      updatedItems.remove(fruit);
    }

    return Basket(updatedItems);
  }
}
