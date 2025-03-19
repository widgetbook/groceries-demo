import 'package:flutter/widgets.dart';

import '../ui.dart';

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
    required this.title,
    this.action,
  });

  final String title;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppTheme.of(context).spacing.xs,
        horizontal: AppTheme.of(context).spacing.sm,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: AppTheme.of(context).spacing.xs,
        children: [
          Text(
            title,
            style: AppTheme.of(context).typography.subheadingLarge,
          ),
          if (action != null) action!,
        ],
      ),
    );
  }
}
