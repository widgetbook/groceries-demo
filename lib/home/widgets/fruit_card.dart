import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:groceries_app/core/core.dart' as core;
import 'package:groceries_app/fixtures/fruits.dart';
import 'package:groceries_app/home/widgets/add_basket_button.dart';
import 'package:groceries_app/models/fruit.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: FruitCard,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=60-3200&mode=dev',
)
Widget fuitCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: FruitCard(
      fruit: getMango(context),
      onFruitAdded: (_) {},
    ),
  );
}

class FruitCard extends StatelessWidget {
  const FruitCard({
    super.key,
    required this.fruit,
    required this.onFruitAdded,
  });

  final Fruit fruit;
  final void Function(Fruit fruit) onFruitAdded;

  @override
  Widget build(BuildContext context) {
    return core.Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      AppTheme.of(context).radius.small,
                    ),
                    topRight: Radius.circular(
                      AppTheme.of(context).radius.small,
                    ),
                  ),
                  border: Border.all(
                    color: AppTheme.of(context).border.lowEmphasis,
                    width: 0,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(fruit.image),
                  ),
                ),
              ),
              Positioned(
                right: 6,
                top: 6,
                child: AddBasketButton(
                  icon: Icons.shopping_bag_outlined,
                  onPressed: () => onFruitAdded(fruit),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(AppTheme.of(context).spacing.medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        fruit.name,
                        style:
                            AppTheme.of(context).typography.headingSemibold20,
                      ),
                    ),
                    Text(
                      '\$${fruit.price}/${AppLocalizations.of(context)!.unit}',
                      style: AppTheme.of(context).typography.bodyMedium16,
                    ),
                  ],
                ),
                SizedBox(
                  height: AppTheme.of(context).spacing.medium,
                ),
                Text(
                  fruit.grownIn,
                  style: AppTheme.of(context).typography.bodyRegular14,
                ),
                SizedBox(height: AppTheme.of(context).spacing.extraSmall),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      fruit.farm,
                      textAlign: TextAlign.center,
                      style: AppTheme.of(context).typography.bodyMedium16,
                    ),
                    SizedBox(width: AppTheme.of(context).spacing.extraSmall),
                    Icon(
                      Icons.arrow_forward_rounded,
                      size: 16,
                      color: AppTheme.of(context).surface.secondary,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
