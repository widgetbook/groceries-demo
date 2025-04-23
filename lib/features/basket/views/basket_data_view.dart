import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';

import '../../../data/data.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

class BasketDataView extends StatelessWidget {
  const BasketDataView({
    super.key,
    required this.items,
    required this.delivery,
    required this.subTotal,
    required this.onFruitAdded,
    required this.onFruitRemoved,
    required this.onContinueToShipping,
  });

  final Map<Fruit, int> items;
  final double delivery;
  final double subTotal;
  final void Function(Fruit fruit) onFruitAdded;
  final void Function(Fruit fruit) onFruitRemoved;
  final VoidCallback onContinueToShipping;

  @override
  Widget build(BuildContext context) {
    return ViewShell(
      child: Column(
        spacing: AppTheme.of(context).spacing.xs,
        children: [
          Expanded(
            child: ListView.separated(
              key: ValueKey(items),
              itemCount: items.length,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: AppTheme.of(context).spacing.m,
                );
              },
              itemBuilder: (context, index) {
                final fruit = items.keys.elementAt(index);
                return BasketCard(
                  fruit: fruit,
                  count: items[fruit]!,
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
            content: context.tr('basketContinueToShipping'),
            onPressed: onContinueToShipping,
          ),
        ],
      ),
    );
  }
}
