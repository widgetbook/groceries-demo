import 'package:flutter/material.dart';
import 'package:groceries_app/home/home.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AddBasketButton,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=112-2401&t=OwNskhPgyoe2Fkcc-4",
)
Widget buildIconButtonUseCase(BuildContext context) {
  return const AddBasketButton(
    icon: Icons.add,
  );
}
