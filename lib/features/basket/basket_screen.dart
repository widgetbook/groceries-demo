import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../data/data.dart';
import '../../l10n/app_localizations.dart';
import '../../ui/ui.dart';
import 'basket.dart';

class EmptyBasketScreen extends StatelessWidget {
  const EmptyBasketScreen({
    super.key,
    required this.onStartShopping,
  });

  final VoidCallback onStartShopping;

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: EmptyState(
                icon: FontAwesomeIcons.basketShopping,
                title: AppLocalizations.of(context)!.basketEmpty,
                message: AppLocalizations.of(context)!.basketEmptyMessage,
              ),
            ),
          ),
          PrimaryButton(
            content: AppLocalizations.of(context)!.startShopping,
            onPressed: onStartShopping,
          ),
        ],
      ),
    );
  }
}

class BasketScreen extends StatelessWidget {
  const BasketScreen({
    super.key,
    required this.basket,
    required this.delivery,
    required this.subTotal,
    required this.onFruitAdded,
    required this.onFruitRemoved,
    required this.onContinueToShipping,
  });

  final Map<Fruit, int> basket;
  final double delivery;
  final double subTotal;
  final void Function(Fruit fruit) onFruitAdded;
  final void Function(Fruit fruit) onFruitRemoved;
  final VoidCallback onContinueToShipping;

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Column(
        spacing: AppTheme.of(context).spacing.xs,
        children: [
          Expanded(
            child: ListView.separated(
              key: ValueKey(basket),
              itemCount: basket.length,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: AppTheme.of(context).spacing.m,
                );
              },
              itemBuilder: (context, index) {
                final fruit = basket.keys.elementAt(index);
                return BasketCard(
                  fruit: fruit,
                  count: basket[fruit]!,
                  onFruitAdded: () => onFruitAdded(fruit),
                  onFruitRemoved: () => onFruitRemoved(fruit),
                );
              },
            ),
          ),
          Summary(
            subTotal: subTotal,
            deliveryFees: delivery,
          ),
          PrimaryButton(
            content: AppLocalizations.of(context)!.basketContinueToShipping,
            onPressed: onContinueToShipping,
          ),
        ],
      ),
    );
  }
}
