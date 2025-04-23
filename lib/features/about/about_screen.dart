import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../ui/ui.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({
    super.key,
    required this.onGoBack,
  });

  final VoidCallback onGoBack;

  @override
  Widget build(BuildContext context) {
    return ViewShell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: AppTheme.of(context).spacing.m,
        children: [
          Image.asset(
            'logo.png',
            package: 'assets',
            width: 100,
            height: 100,
          ),
          Text(
            context.tr('createdBy'),
            style: AppTheme.of(context).typography.label,
          ),
          GestureDetector(
            onTap: onGoBack,
            child: Text(
              context.tr('goBack'),
              style: AppTheme.of(context).typography.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
