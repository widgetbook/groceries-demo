import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../data/fruit.dart';
import '../../l10n/app_localizations.dart';
import '../../ui/ui.dart';
import 'basket.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({
    super.key,
    required this.basket,
    required this.delivery,
    required this.subTotal,
    this.onStartShopping,
    this.onContinueToShipping,
  });

  final Map<Fruit, int> basket;
  final double delivery;
  final double subTotal;
  final VoidCallback? onStartShopping;
  final VoidCallback? onContinueToShipping;

  Widget _buildFilledPage(BuildContext context) {
    return ListView.separated(
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
          onFruitAdded: () => BasketState.of(context).addFruit(fruit),
          onFruitRemoved: () => BasketState.of(context).removeFruit(fruit),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return basket.isEmpty
        ? PageShell(
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
          )
        : PageShell(
            header: AppLocalizations.of(context)!.basketHeadline,
            child: Column(
              children: [
                Expanded(child: _buildFilledPage(context)),
                Summary(
                  subTotal: subTotal,
                  deliveryFees: delivery,
                ),
                SizedBox(
                  height: AppTheme.of(context).spacing.xs,
                ),
                PrimaryButton(
                  content:
                      AppLocalizations.of(context)!.basketContinueToShipping,
                  onPressed: onContinueToShipping,
                ),
              ],
            ),
          );
  }
}
