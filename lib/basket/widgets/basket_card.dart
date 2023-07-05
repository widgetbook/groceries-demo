import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:groceries_app/basket/widgets/quantity.dart';
import 'package:groceries_app/core/core.dart' as core;
import 'package:groceries_app/core/quantity_button.dart';
import 'package:groceries_app/fixtures/fruits.dart';
import 'package:groceries_app/models/fruit.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: BasketCard,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-2014&mode=dev',
)
Widget buildBasketCardUseCase(BuildContext context) {
  return BasketCard(
    fruit: getMango(context),
    onFruitAdded: (_) {},
    onFruitRemoved: (_) {},
    numberOfFruits: 1,
  );
}

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
                  image: AssetImage(fruit.image),
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
