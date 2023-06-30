import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:groceries_app/basket/basket_scope.dart';
import 'package:groceries_app/basket/basket_state.dart';
import 'package:groceries_app/core/core.dart';
import 'package:groceries_app/fixtures/fruits.dart';
import 'package:groceries_app/home/widgets/fruit_card.dart';
import 'package:groceries_app/models/fruit.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Home', type: HomeScreen)
Widget buildHomeUseCase(BuildContext context) {
  return BasketScope(
    child: HomeScreen(
      fruits: getFruits(context),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          title: 'Groceries App',
          numberOfItemsInBasket: basketState.basketSummary.length,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(AppTheme.of(context).spacing.medium),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.fruitsHeadline,
                  style: AppTheme.of(context).typography.displayRegular32,
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
                          return FruitCard(
                            fruit: fruits[index],
                            onFruitAdded: (fruit) =>
                                BasketState.of(context).addFruit(fruit),
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
