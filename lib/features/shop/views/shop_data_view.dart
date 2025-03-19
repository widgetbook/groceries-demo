import 'package:flutter/widgets.dart';

import '../../../data/data.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

class ShopDataView extends StatelessWidget {
  const ShopDataView({
    super.key,
    required this.fruits,
    required this.onFruitAdded,
  });

  final List<Fruit> fruits;
  final void Function(Fruit fruit) onFruitAdded;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(
        ViewShell.paddingOf(context),
      ),
      itemCount: fruits.length,
      separatorBuilder: (_, __) => SizedBox(
        height: AppTheme.of(context).spacing.m,
      ),
      itemBuilder: (context, index) {
        final fruit = fruits[index];

        return ShopCard(
          fruit: fruit,
          onTap: () => onFruitAdded(fruit),
        );
      },
    );
  }
}
