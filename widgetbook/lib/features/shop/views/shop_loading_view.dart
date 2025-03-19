import 'package:flutter/widgets.dart';
import 'package:groceries_app/features/features.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: ShopLoadingView)
Widget buildShopLoadingViewUseCase(BuildContext context) {
  return const ShopLoadingView();
}
