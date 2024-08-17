import 'package:flutter/material.dart';

import '../features/basket/state/basket_state.dart';
import '../repositories/fruit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.fruits,
  });

  final List<Fruit> fruits;

  @override
  Widget build(BuildContext context) {
    final basketState = BasketState.of(context);
    return Container();
    // return PageShell(
    //   header: 'Fruits',
    //   child: ResponsiveLayout(
    //     headline: AppLocalizations.of(context)!.fruitsHeadline,
    //     content: LayoutBuilder(
    //       builder: (context, constraints) {
    //         return AlignedGridView.count(
    //           padding: EdgeInsets.zero,
    //           crossAxisCount: max(1, constraints.maxWidth ~/ 300),
    //           mainAxisSpacing: AppTheme.of(context).spacing.medium,
    //           crossAxisSpacing: AppTheme.of(context).spacing.medium,
    //           itemCount: fruits.length,
    //           itemBuilder: (context, index) {
    //             final fruit = fruits[index];
    //             return FruitCard(
    //               fruit: fruit,
    //               onFruitAdded: () => basketState.addFruit(fruit),
    //             );
    //           },
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
