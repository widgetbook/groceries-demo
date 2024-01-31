import 'dart:math';

import 'package:flutter/widgets.dart';

import '../core/app_bar.dart';
import '../core/primary_button.dart';
import '../l10n/app_localizations.dart';
import '../repositories/fruit.dart';
import '../theme/app_theme.dart';
import 'state/basket_state.dart';
import 'widgets/widgets.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({
    super.key,
    required this.basket,
    required this.delivery,
    required this.subTotal,
  });

  final Map<Fruit, ProductOrder> basket;
  final double delivery;
  final double subTotal;

  Widget _buildEmptyPage(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: EmptyBasketPlaceholder()),
        PrimaryButton(
          content: AppLocalizations.of(context)!.startShopping,
          buttonColor: AppTheme.of(context).surface.brand,
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
                key: ValueKey(basket),
                crossAxisCount: columns,
                padding: EdgeInsets.zero,
                mainAxisSpacing: AppTheme.of(context).spacing.medium,
                crossAxisSpacing: AppTheme.of(context).spacing.medium,
                // TODO this is a bit of a hack
                //  116 is the height of the BasketCard
                childAspectRatio: constraint.maxWidth / columns / 116,
                children: [
                  for (final fruit in basket.keys)
                    BasketCard(
                      fruit: fruit,
                      count: basket[fruit]!.quantity,
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
          buttonColor: AppTheme.of(context).surface.brand,
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
          basketSize: basket.length,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.large,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppTheme.of(context).spacing.medium,
            ),
            child: basket.isEmpty
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
