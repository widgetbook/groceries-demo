import 'package:flutter/widgets.dart' hide Icon;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/fruit/fruit.dart';
import '../../../ui/ui.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    super.key,
    required this.fruit,
    this.onTap,
  });

  final Fruit fruit;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 200,
                child: Image.network(
                  fruit.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(AppTheme.of(context).spacing.xs),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: AppTheme.of(context).spacing.xxs,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          fruit.name,
                          style: AppTheme.of(context).typography.headingLarge,
                        ),
                        Text(
                          '\$${fruit.price.toStringAsFixed(2)}',
                          style: AppTheme.of(context).typography.bodyMedium,
                        ),
                      ],
                    ),
                    Text(
                      fruit.farm,
                      style: AppTheme.of(context).typography.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              decoration: BoxDecoration(
                color: AppTheme.of(context).background.primary,
                borderRadius: BorderRadius.circular(
                  AppTheme.of(context).radius.full,
                ),
              ),
              child: Icon(
                FontAwesomeIcons.circlePlus,
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
