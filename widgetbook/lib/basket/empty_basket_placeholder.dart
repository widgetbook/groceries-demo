import 'package:flutter/material.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: EmptyBasketPlaceholder,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=6809-5957&t=Jvcq3BxVyPK6l2OF-4",
)
Widget buildEmptyBasketPlaceholderUseCase(BuildContext context) {
  return const EmptyBasketPlaceholder();
}
