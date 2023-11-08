import 'package:flutter/material.dart';
import '../../theme/theme.dart';

class AddBasketButton extends StatelessWidget {
  const AddBasketButton({
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
      child: Container(
        padding: EdgeInsets.all(
          AppTheme.of(context).spacing.small,
        ),
        decoration: BoxDecoration(
          color: AppTheme.of(context).surface.primary,
          borderRadius: BorderRadius.circular(
            AppTheme.of(context).radius.full,
          ),
          border: Border.all(
            color: AppTheme.of(context).border.highEmphasis,
          ),
        ),
        child: Icon(
          icon,
          size: 24,
          color: AppTheme.of(context).surface.secondary,
        ),
      ),
    );
  }
}
