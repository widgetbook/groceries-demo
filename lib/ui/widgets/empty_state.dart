import 'package:flutter/material.dart' hide Icon;

import '../ui.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    required this.icon,
    required this.title,
    required this.message,
  });

  final IconData icon;
  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: AppTheme.of(context).spacing.sm,
      children: [
        Icon(
          icon,
          scale: 2,
        ),
        Text(
          title,
          style: AppTheme.of(context).typography.headingExtraLarge,
        ),
        Text(
          message,
          style: AppTheme.of(context).typography.bodyRegular,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
