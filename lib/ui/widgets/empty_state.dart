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
    final spacing = AppTheme.of(context).spacing.sm;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          scale: 2,
        ),
        SizedBox(
          height: spacing,
        ),
        Text(
          title,
          style: AppTheme.of(context).typography.headingExtraLarge,
        ),
        SizedBox(
          height: spacing,
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
