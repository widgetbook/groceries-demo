import 'package:flutter/material.dart';
import 'package:groceries_app/core/icon_button.dart';
import 'package:groceries_app/fixtures/fruits.dart';
import 'package:groceries_app/models/fruit.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: FruitCard)
Widget fuitCard(BuildContext context) {
  return FruitCard(
    fruit: mangoFruit,
    onFruitAdded: (_) {},
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
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppTheme.of(context).radius.sm),
              topRight: Radius.circular(AppTheme.of(context).radius.sm),
            ),
            child: Stack(
              children: [
                Container(
                  height: 162,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/fruits/mango.jpeg'),
                    ),
                  ),
                ),
                Positioned(
                  right: AppTheme.of(context).spacing.sm,
                  top: AppTheme.of(context).spacing.sm,
                  child: AppIconButton(
                    icon: Icons.shopping_bag_outlined,
                    onPressed: () => onFruitAdded(fruit),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(fruit.name),
              const Text('3.34/kg'),
            ],
          ),
          const Text('Grown in germany'),
          const Text("John Doe's Farm"),
        ],
      ),
    );
  }
}
