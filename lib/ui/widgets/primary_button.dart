import 'package:flutter/material.dart';

import '../ui.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.content,
    this.leading,
    this.trailing,
    this.onPressed,
  });

  final String content;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: onPressed == null
          ? SystemMouseCursors.forbidden
          : SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: AppTheme.of(context).spacing.sm,
            horizontal: AppTheme.of(context).spacing.l,
          ),
          decoration: BoxDecoration(
            color: onPressed == null
                ? AppTheme.of(context).background.primaryInactive
                : AppTheme.of(context).background.brand,
            borderRadius: BorderRadius.circular(
              AppTheme.of(context).radius.full,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (leading != null)
                Row(
                  children: [
                    leading!,
                    SizedBox(
                      width: AppTheme.of(context).spacing.xs,
                    ),
                  ],
                ),
              Text(
                content,
                style: AppTheme.of(context).typography.label.copyWith(
                      color: AppTheme.of(context).text.inverse,
                    ),
              ),
              if (trailing != null)
                Row(
                  children: [
                    SizedBox(
                      width: AppTheme.of(context).spacing.xs,
                    ),
                    trailing!,
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
