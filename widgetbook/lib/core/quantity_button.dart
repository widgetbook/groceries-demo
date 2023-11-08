import 'package:flutter/material.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Add',
  type: QuantityButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-1996&mode=dev',
)
Widget buildQuantityButtonAddUseCase(BuildContext context) {
  return const QuantityButton.add();
}

@UseCase(
  name: 'Remove',
  type: QuantityButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-1996&mode=dev',
)
Widget buildQuantityButtonRemoveUseCase(BuildContext context) {
  return const QuantityButton.remove();
}
