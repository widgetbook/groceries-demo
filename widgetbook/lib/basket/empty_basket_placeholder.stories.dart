import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:widgetbook/next.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

part 'empty_basket_placeholder.stories.book.dart';

final meta = Meta<EmptyBasketPlaceholder>();

final $Default = EmptyBasketPlaceholderStory(
  name: 'Default',
);

@UseCase(
  name: 'Default',
  type: EmptyBasketPlaceholder,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=112-7193&mode=dev',
)
Widget buildEmptyBasketPlaceholderUseCase(BuildContext context) {
  return const EmptyBasketPlaceholder();
}
