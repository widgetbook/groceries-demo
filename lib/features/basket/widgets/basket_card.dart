import 'package:flutter/widgets.dart';

import '../../../data/data.dart';
import '../../../ui/ui.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({
    super.key,
    required this.fruit,
    required this.count,
    required this.onFruitAdded,
    required this.onFruitRemoved,
  });

  final Fruit fruit;
  final int count;
  final VoidCallback onFruitAdded;
  final VoidCallback onFruitRemoved;

  double get total => fruit.price * count;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          SizedBox(
            height: 72,
            width: 76,
            child: Image.network(
              fruit.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(AppTheme.of(context).spacing.xs),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: AppTheme.of(context).spacing.xxs,
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
                  ),
                  Counter(
                    value: count,
                    onIncrement: onFruitAdded,
                    onDecrement: onFruitRemoved,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
