import 'package:flutter/material.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.name,
    required this.style,
  });

  final String name;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: style,
    );
  }
}

@UseCase(name: 'Default', type: DesignSystemTextStyles)
Widget buildDesignSystemTextStylesUseCase(BuildContext context) {
  final styles = DesignSystemTextStyles();
  const spacing = 16.0;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextWidget(name: 'Display', style: styles.display),
      const SizedBox(height: spacing),
      TextWidget(name: 'Heading Large', style: styles.headingExtraLarge),
      TextWidget(name: 'Heading Medium', style: styles.headingLarge),
      const SizedBox(height: spacing),
      TextWidget(name: 'Subheading Large', style: styles.subheadingLarge),
      TextWidget(name: 'Subheading Small', style: styles.subheadingSmall),
      const SizedBox(height: spacing),
      TextWidget(name: 'Body Semi Bold', style: styles.bodySemiBold),
      TextWidget(name: 'Body Medium', style: styles.bodyMedium),
      TextWidget(name: 'Body Regular', style: styles.bodyRegular),
      const SizedBox(height: spacing),
      TextWidget(name: 'Body Small', style: styles.bodySmall),
      const SizedBox(height: spacing),
      TextWidget(name: 'Label', style: styles.label),
    ],
  );
}
