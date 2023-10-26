import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  const QuantityButton.add({
    super.key,
    required this.onPressed,
  }) : icon = Icons.add_rounded;

  const QuantityButton.remove({
    super.key,
    required this.onPressed,
  }) : icon = Icons.remove_rounded;

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(AppTheme.of(context).spacing.extraSmall),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppTheme.of(context).radius.full,
          ),
          border: Border.all(
            color: AppTheme.of(context).border.highEmphasis,
          ),
        ),
        child: Icon(
          icon,
          size: 22,
          color: AppTheme.of(context).surface.invert,
        ),
      ),
    );
  }
}
