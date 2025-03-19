import 'package:flutter/widgets.dart';

import '../../data/data.dart';
import 'widgets/widgets.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({
    super.key,
    required this.fruits,
    this.onFruitAdded,
  });

  final List<Fruit> fruits;
  final void Function(Fruit fruit)? onFruitAdded;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fruits.length,
      itemBuilder: (context, index) {
        final fruit = fruits[index];

        return ShopCard(
          fruit: fruit,
          onTap: () => onFruitAdded?.call(fruit),
        );
      },
    );
  }
}
