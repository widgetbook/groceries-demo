import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'logo.png',
            package: 'assets',
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: AppTheme.of(context).spacing.medium,
          ),
          Text(
            'Created by Widgetbook',
            style: AppTheme.of(context).typography.labelMedium14,
          ),
        ],
      ),
    );
  }
}
