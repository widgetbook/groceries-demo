import 'package:flutter/material.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import 'color_preview.dart';

@UseCase(
  name: 'Default',
  type: DesignSystemColor,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7340-24552&t=uJW8KKcBrCOkO7C7-4',
)
Widget buildDesignSystemColorUseCase(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(24),
    child: Column(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorPreview(
          name: 'Primary',
          color: DesignSystemColor.primary,
        ),
        ColorPreview(
          name: 'Brand',
          color: DesignSystemColor.brand,
        ),
        ColorPreview(
          name: 'Grey',
          color: DesignSystemColor.grey,
        ),
      ],
    ),
  );
}
