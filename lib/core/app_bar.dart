import 'package:flutter/material.dart';
import 'package:groceries_app/core/app_icon.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: AppBar)
Widget buildAppBarUseCase(BuildContext context) {
  return const AppBar(
    title: 'Groceries App',
    hasItemsInBasket: true,
  );
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
    required this.title,
    required this.hasItemsInBasket,
  });

  final String title;
  final bool hasItemsInBasket;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppTheme.of(context).spacing.small,
        vertical: AppTheme.of(context).spacing.extraSmall,
      ),
      child: Row(
        children: [
          const AppIcon(icon: Icons.menu),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: AppTheme.of(context).typography.logoDefault,
              ),
            ),
          ),
          Stack(
            children: [
              const AppIcon(icon: Icons.shopping_bag_outlined),
              if (hasItemsInBasket)
                Positioned(
                  left: 4,
                  top: 4,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
