import 'package:flutter/widgets.dart';
import 'theme.dart';
import 'typography_theme_data.dart';

final darkTheme = AppThemeData(
  typography: TypographyThemeData.fromColor(
    const Color(0xFFEAE0D5),
  ),
  surface: SurfaceThemeData(
    primary: const Color(0xFF202020),
    secondary: const Color(0xFFAFAFAF),
    invert: const Color(0xFFEAE0D5),
    light: const Color(0xFF343434),
    tertiary: const Color(0xFFD3D3D3),
    brand: const Color(0xFFA0EFFF),
    feature: const Color(0xFFFFDBD1),
  ),
  border: const BorderThemeData(
    lowEmphasis: Color(0xFF4D4D4D),
    highEmphasis: Color(0xFF7C7C7C),
  ),
);
