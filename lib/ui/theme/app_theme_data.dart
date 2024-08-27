import '../ui.dart';
import 'background_theme_data.dart';
import 'border_theme_data.dart';
import 'radius_theme_data.dart';
import 'spacing_theme_data.dart';
import 'text_theme_data.dart';
import 'typography_theme_data.dart';

class AppThemeData {
  AppThemeData({
    required this.typography,
    required this.background,
    required this.border,
    required this.text,
    this.radius = const RadiusThemeData(),
    this.spacing = const SpacingThemeData(),
  });

  final SpacingThemeData spacing;
  final TypographyThemeData typography;
  final RadiusThemeData radius;
  final BackgroundThemeData background;
  final BorderThemeData border;
  final TextThemeData text;

  static AppThemeData light = AppThemeData(
    typography: TypographyThemeData.fromColor(DesignSystemColor.grey.shade800),
    background: BackgroundThemeData(
      primary: DesignSystemColor.primary.shade100,
      primaryInactive: DesignSystemColor.primary.shade600,
      secondary: DesignSystemColor.primary.shade200,
      brand: DesignSystemColor.brand.shade600,
      page: DesignSystemColor.primary.shade200,
    ),
    border: BorderThemeData(
      color: DesignSystemColor.primary.shade200,
    ),
    text: TextThemeData(
      primary: DesignSystemColor.grey.shade800,
      secondary: DesignSystemColor.primary.shade800,
      tertiary: DesignSystemColor.primary.shade600,
      inactive: DesignSystemColor.grey.shade400,
      inverse: DesignSystemColor.grey.shade200,
    ),
  );

  static AppThemeData dark = AppThemeData(
    typography: TypographyThemeData.fromColor(DesignSystemColor.grey.shade200),
    background: BackgroundThemeData(
      primary: DesignSystemColor.primary.shade900,
      primaryInactive: DesignSystemColor.primary.shade600,
      secondary: DesignSystemColor.primary.shade800,
      brand: DesignSystemColor.brand.shade100,
      page: DesignSystemColor.primary.shade800,
    ),
    border: BorderThemeData(
      color: DesignSystemColor.primary.shade700,
    ),
    text: TextThemeData(
      primary: DesignSystemColor.grey.shade200,
      secondary: DesignSystemColor.primary.shade400,
      tertiary: DesignSystemColor.primary.shade500,
      inactive: DesignSystemColor.grey.shade400,
      inverse: DesignSystemColor.grey.shade800,
    ),
  );
}
