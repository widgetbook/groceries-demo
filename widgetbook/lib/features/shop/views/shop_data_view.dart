import 'package:flutter/widgets.dart';
import 'package:groceries_app/data/mocks.dart';
import 'package:groceries_app/features/features.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: ShopDataView)
Widget buildShopDataViewUseCase(BuildContext context) {
  return ShopDataView(
    fruits: MockDataStore.fruits,
    onFruitAdded: (_) {},
  );
}
