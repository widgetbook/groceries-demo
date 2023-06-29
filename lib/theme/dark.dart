import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries_app/theme/theme.dart';

final darkTheme = AppThemeData(
  spacing: const SpacingThemeData(
    extraSmall: 4,
  ),
  typography: TypographyThemeData(
    logoDefault: GoogleFonts.newsreader(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: const Color(0xFFEAE0D5),
      height: 28,
    ),
  ),
  surface: SurfaceThemeData(
    primary: const Color(0xFF202020),
    secondary: const Color(0xFFAFAFAF),
    invert: const Color(0xFFEAE0D5),
    light: const Color(0xFF343434),
    tertiary: const Color(0xFFD3D3D3),
    brand: const Color(0xFFA0EFFF),
  ),
  border: const BorderThemeData(
    lowEmphasis: Color(0xFF343434),
    highEmphasis: Color(0xFFAFAFAF),
  ),
);
