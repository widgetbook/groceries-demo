import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../basket/state/basket_state.dart';
import '../core/core.dart' as core;
import '../l10n/app_localizations.dart';
import '../repositories/fruit.dart';
import '../theme/theme.dart';
import 'widgets/fruit_card.dart';

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
        core.AppBar(
          title: 'Grocery App',
          numberOfItemsInBasket: basketState.store.length,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.large,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppTheme.of(context).spacing.medium,
            ),
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
                        padding: EdgeInsets.zero,
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
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
