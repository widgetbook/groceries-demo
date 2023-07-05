// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:groceries_app/core/app_icon.dart';
import 'package:groceries_app/core/badge.dart' as core;
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: AppBar)
Widget appBarUseCase(BuildContext context) {
  return AppBar(
    title: context.knobs.string(
      label: 'title',
      initialValue: 'Groceries App',
    ),
    numberOfItemsInBasket: 9,
  );
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
    required this.title,
    required this.numberOfItemsInBasket,
  });

  final String title;
  final int numberOfItemsInBasket;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppTheme.of(context).spacing.extraSmall,
        vertical: AppTheme.of(context).spacing.small,
      ),
      child: Row(
        children: [
          const AppIcon(icon: Icons.menu_rounded),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: AppTheme.of(context).typography.logoSemiBold20,
              ),
            ),
          ),
          Stack(
            children: [
              const AppIcon(icon: Icons.shopping_bag_outlined),
              if (numberOfItemsInBasket > 0)
                Positioned(
                  right: 6,
                  top: 6,
                  child: core.Badge(
                    number: numberOfItemsInBasket,
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
