import 'package:flutter/material.dart';

import '../../core/core.dart' as core;
import '../../core/quantity_button.dart';
import '../../l10n/app_localizations.dart';
import '../../models/fruit.dart';
import '../../theme/theme.dart';
import 'quantity.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({
    super.key,
    required this.fruit,
    required this.onFruitAdded,
    required this.onFruitRemoved,
    required this.numberOfFruits,
  });

  final Fruit fruit;
  final int numberOfFruits;
  final void Function(Fruit fruit) onFruitAdded;
  final void Function(Fruit fruit) onFruitRemoved;

  @override
  Widget build(BuildContext context) {
    return core.Card(
      child: Padding(
        padding: EdgeInsets.all(
          AppTheme.of(context).spacing.small,
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    AppTheme.of(context).radius.extraSmall,
                  ),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(fruit.image, package: 'groceries_app'),
                ),
              ),
            ),
            SizedBox(
              width: AppTheme.of(context).spacing.medium,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fruit.name,
                    style: AppTheme.of(context).typography.headingSemibold20,
                  ),
                  SizedBox(
                    height: AppTheme.of(context).spacing.extraSmall - 2,
                  ),
                  Text(
                    '\$${fruit.price}/${AppLocalizations.of(context)!.unit}',
                    style: AppTheme.of(context).typography.bodyRegular12,
                  ),
                  SizedBox(
                    height: AppTheme.of(context).spacing.medium,
                  ),
                  Row(
                    children: [
                      QuantityButton.remove(
                        onPressed: () => onFruitRemoved(fruit),
                      ),
                      SizedBox(
                        width: AppTheme.of(context).spacing.extraSmall,
                      ),
                      Quantity(value: numberOfFruits),
                      SizedBox(
                        width: AppTheme.of(context).spacing.extraSmall,
                      ),
                      QuantityButton.add(
                        onPressed: () => onFruitAdded(fruit),
                      ),
                      Expanded(child: Container()),
                      Text(
                        '\$${(fruit.price * numberOfFruits).toStringAsFixed(2)}',
                        style: AppTheme.of(context).typography.bodySemiBold16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
