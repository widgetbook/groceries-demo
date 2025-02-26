import 'package:flutter/material.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import 'radius_preview.dart';

@UseCase(
  name: 'Default',
  type: DesignSystemRadius,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7340-24769&t=uJW8KKcBrCOkO7C7-4',
)
Widget buildDesignSystemRadiusUseCase(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(24),
    child: Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        RadiusPreview(
          name: 'zero',
          radius: DesignSystemRadius.none,
        ),
        RadiusPreview(
          name: 'xs',
          radius: DesignSystemRadius.xs,
        ),
        RadiusPreview(
          name: 'sm',
          radius: DesignSystemRadius.sm,
        ),
        RadiusPreview(
          name: 'md',
          radius: DesignSystemRadius.md,
        ),
        RadiusPreview(
          name: 'lg',
          radius: DesignSystemRadius.lg,
        ),
        RadiusPreview(
          name: 'xl',
          radius: DesignSystemRadius.xl,
        ),
        RadiusPreview(
          name: 'xxl',
          radius: DesignSystemRadius.xxl,
        ),
        RadiusPreview(
          name: 'full',
          radius: DesignSystemRadius.full,
        ),
      ],
    ),
  );
}
