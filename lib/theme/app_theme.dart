import 'package:flutter/widgets.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  final AppThemeData data;

  static AppThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<AppTheme>();
    return widget!.data;
  }

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) {
    return data != oldWidget.data;
  }
}

class SpacingThemeData {
  final double none;
  final double extraSmall;
  final double small;
  final double medium;
  final double large;
  final double extraLarge;
  final double extraExtraLarge;
  final double extraExtraExtraLarge;

  const SpacingThemeData({
    this.none = 0,
    this.extraSmall = 4,
    this.small = 8,
    this.medium = 16,
    this.large = 24,
    this.extraLarge = 32,
    this.extraExtraLarge = 40,
    this.extraExtraExtraLarge = 56,
  });
}

class RadiusThemeData {
  final double none;
  final double extraSmall;
  final double small;
  final double medium;
  final double large;
  final double extraLarge;
  final double extraExtraLarge;
  final double full;

  const RadiusThemeData({
    this.none = 0,
    this.extraSmall = 4,
    this.small = 8,
    this.medium = 12,
    this.large = 16,
    this.extraLarge = 28,
    this.extraExtraLarge = 32,
    this.full = 100,
  });
}

class AppThemeData {
  const AppThemeData({
    required this.typography,
    required this.surface,
    required this.border,
    this.radius = const RadiusThemeData(),
    this.spacing = const SpacingThemeData(),
  });

  final SpacingThemeData spacing;
  final TypographyThemeData typography;
  final RadiusThemeData radius;
  final BorderThemeData border;
  final SurfaceThemeData surface;
}

class TypographyThemeData {
  final TextStyle displayRegular32;
  final TextStyle headingSemibold20;
  final TextStyle headingMedium24;
  final TextStyle bodyRegular12;
  final TextStyle bodyRegular14;
  final TextStyle bodyMedium16;
  final TextStyle bodySemiBold16;
  final TextStyle labelMedium11;
  final TextStyle labelMedium14;
  final TextStyle subheadingRegular16;
  final TextStyle subheadingMedium20;
  final TextStyle logoSemiBold20;

  const TypographyThemeData({
    required this.logoSemiBold20,
    required this.displayRegular32,
    required this.headingSemibold20,
    required this.headingMedium24,
    required this.bodyRegular12,
    required this.bodyRegular14,
    required this.bodyMedium16,
    required this.bodySemiBold16,
    required this.labelMedium11,
    required this.labelMedium14,
    required this.subheadingRegular16,
    required this.subheadingMedium20,
  });
}

class BorderThemeData {
  final Color lowEmphasis;
  final Color highEmphasis;

  const BorderThemeData({
    required this.lowEmphasis,
    required this.highEmphasis,
  });
}

class SurfaceThemeData {
  final Color primary;
  final Color secondary;
  final Color invert;
  final Color light;
  final Color tertiary;
  final Color brand;
  final Color feature;

  SurfaceThemeData({
    required this.primary,
    required this.secondary,
    required this.invert,
    required this.light,
    required this.tertiary,
    required this.brand,
    required this.feature,
  });
}
