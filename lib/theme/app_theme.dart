import 'package:flutter/widgets.dart';
import 'typography_theme_data.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    super.key,
    required this.data,
    required super.child,
  });

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
  final double none;
  final double extraSmall;
  final double small;
  final double medium;
  final double large;
  final double extraLarge;
  final double extraExtraLarge;
  final double extraExtraExtraLarge;
}

class RadiusThemeData {
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
  final double none;
  final double extraSmall;
  final double small;
  final double medium;
  final double large;
  final double extraLarge;
  final double extraExtraLarge;
  final double full;
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

class BorderThemeData {
  const BorderThemeData({
    required this.lowEmphasis,
    required this.highEmphasis,
  });
  final Color lowEmphasis;
  final Color highEmphasis;
}

class SurfaceThemeData {
  SurfaceThemeData({
    required this.primary,
    required this.secondary,
    required this.invert,
    required this.light,
    required this.tertiary,
    required this.brand,
    required this.feature,
  });
  final Color primary;
  final Color secondary;
  final Color invert;
  final Color light;
  final Color tertiary;
  final Color brand;
  final Color feature;
}
