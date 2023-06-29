import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/basket_scope.dart';
import 'package:groceries_app/basket/basket_state.dart';
import 'package:groceries_app/core/core.dart';
import 'package:groceries_app/fixtures/fruits.dart';
import 'package:groceries_app/home/widgets/fruit_card.dart';
import 'package:groceries_app/models/fruit.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Home', type: HomeScreen)
Widget buildHomeUseCase(BuildContext context) {
  return BasketScope(
    child: const HomeScreen(
      fruits: fruits,
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.fruits,
  });

  final List<Fruit> fruits;

  @override
  Widget build(BuildContext context) {
    final basketState = BasketState.of(context);
    return Column(
      children: [
        AppBar(
          title: 'Groceries App',
          hasItemsInBasket: basketState.data.isNotEmpty,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: fruits.length,
            itemBuilder: (context, index) => FruitCard(
              fruit: fruits[index],
              onFruitAdded: (fruit) => BasketState.of(context).addFruit(fruit),
            ),
          ),
        )
      ],
    );
  }
}
