import 'package:flutter/material.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import 'spacing_preview.dart';

@UseCase(
  name: 'Default',
  type: DesignSystemSpacing,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7340-24767&t=uJW8KKcBrCOkO7C7-4',
)
Widget buildDesignSystemSpacingUseCase(BuildContext context) {
  return const SingleChildScrollView(
    child: Column(
      children: [
        SpacingPreview(
          name: 'none',
          spacing: DesignSystemSpacing.zero,
        ),
        SpacingPreview(
          name: 'xxs',
          spacing: DesignSystemSpacing.xxs,
        ),
        SpacingPreview(
          name: 'xs',
          spacing: DesignSystemSpacing.xs,
        ),
        SpacingPreview(
          name: 'small',
          spacing: DesignSystemSpacing.sm,
        ),
        SpacingPreview(
          name: 'medium',
          spacing: DesignSystemSpacing.m,
        ),
        SpacingPreview(
          name: 'large',
          spacing: DesignSystemSpacing.l,
        ),
        SpacingPreview(
          name: 'xl',
          spacing: DesignSystemSpacing.xl,
        ),
        SpacingPreview(
          name: 'xxl',
          spacing: DesignSystemSpacing.xxl,
        ),
      ],
    ),
  );
}
