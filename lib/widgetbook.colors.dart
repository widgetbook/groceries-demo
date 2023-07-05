// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:groceries_app/widgetbook.group.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class ColorLabel extends StatelessWidget {
  const ColorLabel({
    super.key,
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Text(label),
      ],
    );
  }
}

@UseCase(name: 'Color', type: AppThemeData)
Widget buildColorUseCase(BuildContext context) {
  return WidgetbookGroup(
    label: 'surface',
    children: [
      ColorLabel(
        label: 'primary',
        color: AppTheme.of(context).surface.primary,
      ),
      ColorLabel(
        label: 'secondary',
        color: AppTheme.of(context).surface.secondary,
      ),
      ColorLabel(
        label: 'invert',
        color: AppTheme.of(context).surface.invert,
      ),
      ColorLabel(
        label: 'light',
        color: AppTheme.of(context).surface.light,
      ),
      ColorLabel(
        label: 'tertiary',
        color: AppTheme.of(context).surface.tertiary,
      ),
      ColorLabel(
        label: 'brand',
        color: AppTheme.of(context).surface.brand,
      ),
      ColorLabel(
        label: 'feature',
        color: AppTheme.of(context).surface.feature,
      ),
    ],
  );
}
