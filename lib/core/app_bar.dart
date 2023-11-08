import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/theme.dart';
import 'app_icon.dart';
import 'badge.dart' as core;

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
    required this.title,
    required this.basketSize,
  });

  final String title;
  final int basketSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppTheme.of(context).spacing.extraSmall,
        vertical: AppTheme.of(context).spacing.small,
      ),
      child: Row(
        children: [
          const AppIcon(
            icon: Icons.menu_rounded,
          ),
          Expanded(
            child: Align(
              child: Text(
                title,
                style: AppTheme.of(context).typography.logoSemiBold20,
              ),
            ),
          ),
          Stack(
            children: [
              AppIcon(
                icon: Icons.shopping_bag_outlined,
                onPressed: () => context.go('/basket'),
              ),
              if (basketSize > 0)
                Positioned(
                  right: 6,
                  top: 6,
                  child: core.Badge(
                    number: basketSize,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
