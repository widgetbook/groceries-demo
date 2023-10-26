import 'package:flutter/widgets.dart';
import 'theme.dart';
import 'typography_theme_data.dart';

final lightTheme = AppThemeData(
  typography: TypographyThemeData.fromColor(
    const Color(0xFF202020),
  ),
  surface: SurfaceThemeData(
    primary: const Color(0xFFEAE0D5),
    secondary: const Color(0xFF343434),
    invert: const Color(0xFF202020),
    light: const Color(0xFFF2ECE6),
    tertiary: const Color(0xFF7C7C7C),
    brand: const Color(0xFF15616D),
    feature: const Color(0xFF78290F),
  ),
  border: const BorderThemeData(
    lowEmphasis: Color(0xFFD3D3D3),
    highEmphasis: Color(0xFF7C7C7C),
  ),
);
