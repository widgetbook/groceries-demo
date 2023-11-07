import 'dart:math';

import 'package:flutter/widgets.dart';

import '../../core/app_bar.dart';
import '../../core/primary_button.dart';
import '../../l10n/app_localizations.dart';
import '../../models/fruit.dart';
import '../../theme/app_theme.dart';
import '../basket_state.dart';
import '../widgets/widgets.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({
    super.key,
    required this.fruits,
    required this.delivery,
    required this.total,
    required this.subTotal,
  });

  final Map<Fruit, ProductOrder> fruits;
  final double delivery;
  final double total;
  final double subTotal;

  Widget _buildEmptyPage(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: EmptyBasketPlaceholder()),
        PrimaryButton(
          content: AppLocalizations.of(context)!.startShopping,
        ),
      ],
    );
  }

  Widget _buildFilledPage(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.basketHeadline,
          style: AppTheme.of(context).typography.displayRegular32,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.large,
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraint) {
              final columns = max(
                1,
                constraint.maxWidth ~/ 350,
              );
              return GridView.count(
                key: ValueKey(fruits),
                crossAxisCount: columns,
                padding: EdgeInsets.zero,
                mainAxisSpacing: AppTheme.of(context).spacing.medium,
                crossAxisSpacing: AppTheme.of(context).spacing.medium,
                // TODO this is a bit of a hack
                //  116 is the height of the BasketCard
                childAspectRatio: constraint.maxWidth / columns / 116,
                children: [
                  for (final fruit in fruits.keys)
                    BasketCard(
                      fruit: fruit,
                      count: fruits[fruit]!.quantity,
                      onFruitAdded: () =>
                          BasketState.of(context).addFruit(fruit),
                      onFruitRemoved: () =>
                          BasketState.of(context).removeFruit(fruit),
                    ),
                ],
              );
            },
          ),
        ),
        Summary(
          delivery: delivery,
          subTotal: subTotal,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.large,
        ),
        PrimaryButton(
          content: AppLocalizations.of(context)!.basketContinueToShipping,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          title: 'Groceries App',
          numberOfItemsInBasket: fruits.length,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.large,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppTheme.of(context).spacing.medium,
            ),
            child: fruits.isEmpty
                ? _buildEmptyPage(context)
                : _buildFilledPage(context),
          ),
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.medium,
        ),
      ],
    );
  }
}
