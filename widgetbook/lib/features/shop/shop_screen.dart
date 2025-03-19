import 'package:flutter/widgets.dart';
import 'package:groceries_app/data/mocks.dart';
import 'package:groceries_app/features/shop/shop.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: ShopScreen,
)
Widget buildBasketScreenEmptyUseCase(BuildContext context) {
  return const ShopScreen(
    fruits: MockDataStore.fruits,
  );
}
