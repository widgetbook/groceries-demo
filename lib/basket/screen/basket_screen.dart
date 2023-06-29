import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/basket_card.dart';
import 'package:groceries_app/basket/basket_scope.dart';
import 'package:groceries_app/basket/basket_state.dart';
import 'package:groceries_app/core/core.dart';
import 'package:groceries_app/fixtures/fruits.dart';
import 'package:groceries_app/models/fruit.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: BasketScreen)
Widget buildBasketScreenUseCase(BuildContext context) {
  return BasketScope(
    state: BasketState(
      data: {
        getMango(context): 1,
        getAvocado(context): 2,
      },
    ),
    child: Builder(
      builder: (context) {
        final basketState = BasketState.of(context);
        return BasketScreen(
          fruits: basketState.data,
        );
      },
    ),
  );
}

class BasketScreen extends StatelessWidget {
  const BasketScreen({
    super.key,
    required this.fruits,
  });

  final Map<Fruit, int> fruits;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          title: 'Groceries App',
          numberOfItemsInBasket: fruits.length,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              final fruit = fruits.keys.toList()[index];
              return BasketCard(
                numberOfFruits: fruits[fruit]!,
                fruit: fruit,
                onFruitAdded: (fruit) =>
                    BasketState.of(context).addFruit(fruit),
                onFruitRemoved: (fruit) =>
                    BasketState.of(context).removeFruit(fruit),
              );
            },
            itemCount: fruits.length,
          ),
        )
      ],
    );
  }
}
