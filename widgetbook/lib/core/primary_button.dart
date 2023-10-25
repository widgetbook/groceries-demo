import 'package:flutter/material.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'default',
  type: PrimaryButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=86-1012&mode=dev',
)
Widget buildContinueButtonUseCase(BuildContext context) {
  return const PrimaryButton(
    content: 'Continue to Shipping',
  );
}
