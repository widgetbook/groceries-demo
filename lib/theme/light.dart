import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries_app/theme/theme.dart';

final lightTheme = AppThemeData(
  spacing: const SpacingThemeData(
    extraSmall: 4,
  ),
  typography: TypographyThemeData(
    logoDefault: GoogleFonts.newsreader(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF202020),
    ),
  ),
  surface: SurfaceThemeData(
    primary: const Color(0xFFEAE0D5),
    secondary: const Color(0xFF343434),
    invert: const Color(0xFF202020),
    light: const Color(0xFFEEE6DD),
    tertiary: const Color(0xFF7C7C7C),
    brand: const Color(0xFF15616D),
  ),
  border: const BorderThemeData(
    lowEmphasis: Color(0xFFD3D3D3),
    highEmphasis: Color(0xFF7C7C7C),
  ),
);
