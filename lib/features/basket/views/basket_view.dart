import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../l10n/app_localizations.dart';
import '../../../repositories/fruit.dart';
import '../../../ui/ui.dart';
import '../basket.dart';

class BasketView extends StatelessWidget {
  const BasketView({
    super.key,
    required this.basket,
    required this.delivery,
    required this.subTotal,
  });

  final Map<Fruit, ProductOrder> basket;
  final double delivery;
  final double subTotal;

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
          count: basket[fruit]!.quantity,
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
                  delivery: delivery,
                ),
                SizedBox(
                  height: AppTheme.of(context).spacing.xs,
                ),
                PrimaryButton(
                  content:
                      AppLocalizations.of(context)!.basketContinueToShipping,
                ),
              ],
            ),
          );
  }
}
