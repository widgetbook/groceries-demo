import 'package:flutter/material.dart';

import '../../ui/ui.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
            'Created by Widgetbook',
            style: AppTheme.of(context).typography.label,
          ),
        ],
      ),
    );
  }
}
