import 'package:flutter/material.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: AppIconButton)
Widget buildIconButtonUseCase(BuildContext context) {
  return AppIconButton(
    icon: Icons.add,
    onPressed: () {},
  );
}

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: AppTheme.of(context).surface.primary,
          borderRadius: BorderRadius.circular(
            AppTheme.of(context).radius.full,
          ),
          border: Border.all(
            color: AppTheme.of(context).surface.secondary,
          ),
        ),
        child: Icon(icon),
      ),
    );
  }
}
