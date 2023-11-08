import 'package:flutter/material.dart';

import '../../core/core.dart' as core;
import '../../l10n/app_localizations.dart';
import '../../repositories/fruit.dart';
import '../../theme/app_theme.dart';
import 'add_basket_button.dart';

class FruitCard extends StatelessWidget {
  const FruitCard({
    super.key,
    required this.fruit,
    this.onFruitAdded,
  });

  final Fruit fruit;
  final VoidCallback? onFruitAdded;

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
                    image: NetworkImage(fruit.imageUrl),
                  ),
                ),
              ),
              Positioned(
                right: 6,
                top: 6,
                child: AddBasketButton(
                  icon: Icons.shopping_bag_outlined,
                  onPressed: onFruitAdded,
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
                  fruit.origin,
                  style: AppTheme.of(context).typography.bodyRegular14,
                ),
                SizedBox(
                  height: AppTheme.of(context).spacing.extraSmall,
                ),
                Row(
                  children: [
                    Text(
                      fruit.farm,
                      textAlign: TextAlign.center,
                      style: AppTheme.of(context).typography.bodyMedium16,
                    ),
                    SizedBox(
                      width: AppTheme.of(context).spacing.extraSmall,
                    ),
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
