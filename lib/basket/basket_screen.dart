import 'dart:math';

import 'package:flutter/widgets.dart';

import '../core/core.dart';
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

  Widget _buildFilledPage(BuildContext context) {
    return LayoutBuilder(
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
                onFruitAdded: () => BasketState.of(context).addFruit(fruit),
                onFruitRemoved: () =>
                    BasketState.of(context).removeFruit(fruit),
              ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageShell(
      basketSize: basket.length,
      child: basket.isEmpty
          ? ResponsiveLayout(
              content: const EmptyBasketPlaceholder(),
              footer: PrimaryButton(
                content: AppLocalizations.of(context)!.startShopping,
              ),
            )
          : ResponsiveLayout(
              content: _buildFilledPage(context),
              footer: BasketSummary(delivery: delivery, subTotal: subTotal),
              headline: AppLocalizations.of(context)!.basketHeadline,
            ),
    );
  }
}
