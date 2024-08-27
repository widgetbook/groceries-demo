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
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.of(context).background.primary,
        borderRadius: BorderRadius.circular(
          AppTheme.of(context).radius.sm,
        ),
        border: Border.all(
          color: AppTheme.of(context).border.color,
        ),
      ),
      child: child,
    );
  }
}
