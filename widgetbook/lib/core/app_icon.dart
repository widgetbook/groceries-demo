import 'package:flutter/material.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AppIcon,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=112-1457&mode=dev',
)
Widget buildAppIconUseCase(BuildContext context) {
  return const AppIcon(
    icon: Icons.shopping_bag_outlined,
  );
}
