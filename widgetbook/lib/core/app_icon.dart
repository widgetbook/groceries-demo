import 'package:flutter/material.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AppIcon,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=112-1457&t=Jvcq3BxVyPK6l2OF-4",
)
Widget buildAppIconUseCase(BuildContext context) {
  return const AppIcon(
    icon: Icons.shopping_bag_outlined,
  );
}
