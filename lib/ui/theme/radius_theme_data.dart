import '../foundation/radius.dart';

class RadiusThemeData {
  const RadiusThemeData({
    this.none = DesignSystemRadius.none,
    this.xs = DesignSystemRadius.xs,
    this.sm = DesignSystemRadius.sm,
    this.md = DesignSystemRadius.md,
    this.lg = DesignSystemRadius.lg,
    this.xl = DesignSystemRadius.xl,
    this.xxl = DesignSystemRadius.xxl,
    this.full = DesignSystemRadius.full,
  });

  final double none;
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double xxl;
  final double full;
}
