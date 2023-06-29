import 'package:flutter/material.dart';
import 'package:groceries_app/fixtures/fruits.dart';
import 'package:groceries_app/models/fruit.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: BasketCard)
Widget buildBasketCardUseCase(BuildContext context) {
  return BasketCard(
    fruit: getMango(context),
    onFruitAdded: (_) {},
    onFruitRemoved: (_) {},
    numberOfFruits: 1,
  );
}

class BasketCard extends StatelessWidget {
  const BasketCard({
    super.key,
    required this.fruit,
    required this.onFruitAdded,
    required this.onFruitRemoved,
    required this.numberOfFruits,
  });

  final Fruit fruit;
  final int numberOfFruits;
  final void Function(Fruit fruit) onFruitAdded;
  final void Function(Fruit fruit) onFruitRemoved;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Image.asset(
              fruit.image,
              height: 100,
              width: 100,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(fruit.name),
                Text(fruit.price.toString()),
                Text(numberOfFruits.toString()),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => onFruitAdded(fruit),
                      icon: const Icon(
                        Icons.add,
                      ),
                    ),
                    IconButton(
                      onPressed: () => onFruitRemoved(fruit),
                      icon: const Icon(
                        Icons.remove,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
