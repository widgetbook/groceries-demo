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
    displayRegular: GoogleFonts.lora(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF202020),
    ),
    headingSemibold: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF202020),
      letterSpacing: 0.5,
    ),
    bodyRegular: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF202020),
      letterSpacing: 0.5,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF202020),
      letterSpacing: 0.25,
    ),
    bodyDefault: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF202020),
      letterSpacing: 0.25,
    ),
    bodySemiBold: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF202020),
      letterSpacing: 0.5,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF202020),
      letterSpacing: 0.1,
    ),
  ),
  surface: SurfaceThemeData(
    primary: const Color(0xFFEAE0D5),
    secondary: const Color(0xFF343434),
    invert: const Color(0xFF202020),
    light: const Color(0xFFEEE6DD),
    tertiary: const Color(0xFF7C7C7C),
    brand: const Color(0xFF15616D),
    feature: const Color(0xFF78290F),
  ),
  border: const BorderThemeData(
    lowEmphasis: Color(0xFFD3D3D3),
    highEmphasis: Color(0xFF7C7C7C),
  ),
);
