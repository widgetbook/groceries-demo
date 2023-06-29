import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:groceries_app/basket/basket_card.dart';
import 'package:groceries_app/basket/basket_scope.dart';
import 'package:groceries_app/basket/basket_state.dart';
import 'package:groceries_app/core/core.dart';
import 'package:groceries_app/fixtures/fruits.dart';
import 'package:groceries_app/models/fruit.dart';
import 'package:groceries_app/theme/app_theme.dart';
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
          child: Padding(
            padding: EdgeInsets.all(AppTheme.of(context).spacing.medium),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.basketHeadline,
                  style: AppTheme.of(context).typography.displayRegular,
                ),
                SizedBox(
                  height: AppTheme.of(context).spacing.large,
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return AlignedGridView.count(
                        crossAxisCount: max(1, constraints.maxWidth ~/ 300),
                        mainAxisSpacing: AppTheme.of(context).spacing.medium,
                        crossAxisSpacing: AppTheme.of(context).spacing.medium,
                        itemCount: fruits.length,
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
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
