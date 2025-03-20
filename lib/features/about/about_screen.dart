import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
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
            AppLocalizations.of(context)!.createdBy,
            style: AppTheme.of(context).typography.label,
          ),
          GestureDetector(
            onTap: onGoBack,
            child: Text(
              AppLocalizations.of(context)!.goBack,
              style: AppTheme.of(context).typography.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
