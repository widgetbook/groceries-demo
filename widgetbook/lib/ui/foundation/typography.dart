import 'package:flutter/material.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import 'typography_preview.dart';

@UseCase(
  name: 'Default',
  type: DesignSystemTextStyles,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7225-2964&t=N6qwmLP7MP59ClWB-4',
)
Widget buildDesignSystemTextStylesUseCase(BuildContext context) {
  final styles = AppTheme.of(context).typography;

  return Padding(
    padding: const EdgeInsets.all(24),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 24,
        children: [
          TypographyPreview(
            name: 'Display',
            styles: {
              'Display': styles.display,
            },
          ),
          TypographyPreview(
            name: 'Heading',
            styles: {
              'Heading xl': styles.headingExtraLarge,
              'Heading lg': styles.headingLarge,
            },
          ),
          TypographyPreview(
            name: 'Subheading',
            styles: {
              'Subheading lg': styles.subheadingLarge,
              'Subheading sm': styles.subheadingSmall,
            },
          ),
          TypographyPreview(
            name: 'Body',
            styles: {
              'Body (semi bold)': styles.bodySemiBold,
              'Body (medium)': styles.bodyMedium,
              'Body (regular)': styles.bodyRegular,
              'Body sm': styles.bodySmall,
            },
          ),
          TypographyPreview(
            name: 'Label',
            styles: {
              'Label': styles.label,
            },
          ),
        ],
      ),
    ),
  );
}
