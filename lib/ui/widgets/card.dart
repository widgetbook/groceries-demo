import 'package:flutter/material.dart';

import '../ui.dart';

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final radius = AppTheme.of(context).radius.sm;

    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.all(
        Radius.circular(AppTheme.of(context).radius.sm),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.of(context).background.primary,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: AppTheme.of(context).border.color,
          ),
        ),
        child: child,
      ),
    );
  }
}
