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
  return const Padding(
    padding: EdgeInsets.all(24),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          SpacingPreview(
            name: 'zero',
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
            name: 'sm',
            spacing: DesignSystemSpacing.sm,
          ),
          SpacingPreview(
            name: 'md',
            spacing: DesignSystemSpacing.m,
          ),
          SpacingPreview(
            name: 'lg',
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
          SpacingPreview(
            name: 'xxxl',
            spacing: DesignSystemSpacing.xxxl,
          ),
        ],
      ),
    ),
  );
}
