import 'package:flutter/material.dart';
import 'package:groceries_app/home/home.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AddBasketButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=112-2401&mode=dev',
)
Widget buildIconButtonUseCase(BuildContext context) {
  return AddBasketButton(
    icon: Icons.add,
    onPressed: () {},
  );
}
