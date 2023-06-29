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
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xl2;
  final double xl3;

  const SpacingThemeData({
    this.none = 0,
    this.xs = 4,
    this.sm = 8,
    this.md = 16,
    this.lg = 24,
    this.xl = 32,
    this.xl2 = 40,
    this.xl3 = 56,
  });
}

class RadiusThemeData {
  final double none;
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xl2;
  final double full;

  const RadiusThemeData({
    this.none = 0,
    this.xs = 4,
    this.sm = 8,
    this.md = 12,
    this.lg = 16,
    this.xl = 28,
    this.xl2 = 32,
    this.full = double.infinity,
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
  final TextStyle headerSomething;

  const TypographyThemeData({
    required this.headerSomething,
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

  SurfaceThemeData({
    required this.primary,
    required this.secondary,
    required this.invert,
    required this.light,
    required this.tertiary,
    required this.brand,
  });
}
