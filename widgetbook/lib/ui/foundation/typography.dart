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
  final styles = DesignSystemTextStyles();
  const spacing = 16.0;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TypographyPreview(
        name: 'Display',
        style: styles.display,
      ),
      const SizedBox(height: spacing),
      TypographyPreview(
        name: 'Heading Large',
        style: styles.headingExtraLarge,
      ),
      TypographyPreview(
        name: 'Heading Medium',
        style: styles.headingLarge,
      ),
      const SizedBox(height: spacing),
      TypographyPreview(
        name: 'Subheading Large',
        style: styles.subheadingLarge,
      ),
      TypographyPreview(
        name: 'Subheading Small',
        style: styles.subheadingSmall,
      ),
      const SizedBox(height: spacing),
      TypographyPreview(
        name: 'Body Semi Bold',
        style: styles.bodySemiBold,
      ),
      TypographyPreview(
        name: 'Body Medium',
        style: styles.bodyMedium,
      ),
      TypographyPreview(
        name: 'Body Regular',
        style: styles.bodyRegular,
      ),
      const SizedBox(height: spacing),
      TypographyPreview(
        name: 'Body Small',
        style: styles.bodySmall,
      ),
      const SizedBox(height: spacing),
      TypographyPreview(
        name: 'Label',
        style: styles.label,
      ),
    ],
  );
}
