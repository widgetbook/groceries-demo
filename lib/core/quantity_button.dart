import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class QuantityButton extends StatefulWidget {
  const QuantityButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  const QuantityButton.add({
    super.key,
    this.onPressed,
  }) : icon = Icons.add_rounded;

  const QuantityButton.remove({
    super.key,
    this.onPressed,
  }) : icon = Icons.remove_rounded;

  final VoidCallback? onPressed;
  final IconData icon;

  @override
  State<QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          padding: EdgeInsets.all(AppTheme.of(context).spacing.extraSmall),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppTheme.of(context).radius.full,
            ),
            color: isHovered ? Colors.black.withOpacity(0.3) : null,
            border: Border.all(
              color: AppTheme.of(context).border.highEmphasis,
            ),
          ),
          child: Icon(
            widget.icon,
            size: 22,
            color: AppTheme.of(context).surface.invert,
          ),
        ),
      ),
    );
  }
}
