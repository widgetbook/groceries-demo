import 'package:flutter/material.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'group.dart';

@UseCase(
  name: 'Surface',
  type: SurfaceThemeData,
  path: '[Theme]',
)
Widget buildColorUseCase(BuildContext context) {
  return WidgetbookGroup(
    label: 'Surface',
    children: [
      ColorLabel(
        label: 'Primary',
        color: AppTheme.of(context).surface.primary,
      ),
      ColorLabel(
        label: 'Secondary',
        color: AppTheme.of(context).surface.secondary,
      ),
      ColorLabel(
        label: 'Invert',
        color: AppTheme.of(context).surface.invert,
      ),
      ColorLabel(
        label: 'Light',
        color: AppTheme.of(context).surface.light,
      ),
      ColorLabel(
        label: 'Tertiary',
        color: AppTheme.of(context).surface.tertiary,
      ),
      ColorLabel(
        label: 'Brand',
        color: AppTheme.of(context).surface.brand,
      ),
      ColorLabel(
        label: 'Feature',
        color: AppTheme.of(context).surface.feature,
      ),
    ],
  );
}

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
