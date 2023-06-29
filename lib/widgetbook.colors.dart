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
            borderRadius: BorderRadius.circular(8),
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
    label: 'text',
    children: [
      ColorLabel(
        label: 'textInvertColor',
        color: AppTheme.of(context).surface.primary,
      ),
    ],
  );
}
