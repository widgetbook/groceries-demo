import 'package:flutter/material.dart';

import '../ui.dart';

class PageShell extends StatelessWidget {
  const PageShell({super.key, required this.child, this.header});

  final Widget child;
  final String? header;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DesignSystemAppBar(
          title: 'Groceries App',
        ),
        const DesignSystemDivider(),
        if (header != null)
          Padding(
            padding: EdgeInsets.all(AppTheme.of(context).spacing.sm),
            child: Text(
              header!,
              style: AppTheme.of(context).typography.headingLarge,
            ),
          ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(
              theme.spacing.sm,
            ),
            child: child,
          ),
        ),
        const DesignSystemDivider(),
        const DesignSystemBottomNavigationBar(),
      ],
    );
  }
}
