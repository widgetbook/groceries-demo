import 'package:flutter/widgets.dart';
import 'package:groceries_app/data/mocks.dart';
import 'package:groceries_app/features/shop/shop.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: ShopCard,
)
Widget buildShopCardUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: ShopCard(
      fruit: MockDataStore.fruits.first,
    ),
  );
}
