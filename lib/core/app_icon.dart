import 'package:flutter/material.dart';
import 'package:groceries_app/theme/theme.dart';
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

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.all(
          AppTheme.of(context).spacing.small,
        ),
        child: Icon(
          icon,
          color: AppTheme.of(context).surface.secondary,
          size: 24,
        ),
      ),
    );
  }
}
