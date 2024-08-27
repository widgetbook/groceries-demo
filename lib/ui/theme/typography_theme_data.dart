import 'package:flutter/widgets.dart';

import '../foundation/text_styles.dart';

class TypographyThemeData {
  TypographyThemeData._({
    required this.display,
    required this.headingExtraLarge,
    required this.headingLarge,
    required this.subheadingLarge,
    required this.subheadingSmall,
    required this.bodySemiBold,
    required this.bodyMedium,
    required this.bodyRegular,
    required this.bodySmall,
    required this.label,
  });

  factory TypographyThemeData.fromColor(Color color) {
    final styles = DesignSystemTextStyles();
    return TypographyThemeData._(
      display: styles.display.copyWith(color: color),
      headingExtraLarge: styles.headingExtraLarge.copyWith(color: color),
      headingLarge: styles.headingLarge.copyWith(color: color),
      subheadingLarge: styles.subheadingLarge.copyWith(color: color),
      subheadingSmall: styles.subheadingSmall.copyWith(color: color),
      bodySemiBold: styles.bodySemiBold.copyWith(color: color),
      bodyMedium: styles.bodyMedium.copyWith(color: color),
      bodyRegular: styles.bodyRegular.copyWith(color: color),
      bodySmall: styles.bodySmall.copyWith(color: color),
      label: styles.label.copyWith(color: color),
    );
  }
  final TextStyle display;
  final TextStyle headingExtraLarge;
  final TextStyle headingLarge;
  final TextStyle subheadingLarge;
  final TextStyle subheadingSmall;
  final TextStyle bodySemiBold;
  final TextStyle bodyMedium;
  final TextStyle bodyRegular;
  final TextStyle bodySmall;
  final TextStyle label;
}
