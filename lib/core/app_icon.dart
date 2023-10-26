import 'package:flutter/material.dart';

import '../theme/theme.dart';

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
