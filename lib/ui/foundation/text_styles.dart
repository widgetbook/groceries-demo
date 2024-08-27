// ignore_for_file: unused_field

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class _FigmaFontLineHeight {
  static const double xs = 16;
  static const double sm = 24;
  static const double md = 32;
  static const double lg = 40;
  static const double xl = 48;
}

class _FigmaFontHeight {
  static const double xs = 12;
  static const double sm = 16;
  static const double md = 18;
  static const double lg = 20;
  static const double xl = 24;
  static const double xxl = 32;
  static const double xxxl = 40;
  static const double xxxxl = 48;
}

class DesignSystemTextStyles {
  final display = GoogleFonts.lora(
    fontSize: _FigmaFontHeight.xxxl,
    fontWeight: FontWeight.w500,
    height: _FigmaFontLineHeight.xl / _FigmaFontHeight.xxxl,
  );

  final headingExtraLarge = GoogleFonts.poppins(
    fontSize: _FigmaFontHeight.xl,
    fontWeight: FontWeight.w500,
    height: _FigmaFontLineHeight.md / _FigmaFontHeight.xl,
  );

  final headingLarge = GoogleFonts.poppins(
    fontSize: _FigmaFontHeight.lg,
    fontWeight: FontWeight.w500,
    height: _FigmaFontLineHeight.sm / _FigmaFontHeight.lg,
  );

  final subheadingLarge = GoogleFonts.poppins(
    fontSize: _FigmaFontHeight.lg,
    fontWeight: FontWeight.w500,
    height: _FigmaFontLineHeight.sm / _FigmaFontHeight.lg,
  );

  final subheadingSmall = GoogleFonts.poppins(
    fontSize: _FigmaFontHeight.sm,
    fontWeight: FontWeight.w400,
    height: _FigmaFontLineHeight.sm / _FigmaFontHeight.sm,
  );

  final label = GoogleFonts.poppins(
    fontSize: _FigmaFontHeight.sm,
    fontWeight: FontWeight.w500,
    height: _FigmaFontLineHeight.sm / _FigmaFontHeight.sm,
  );

  final bodySmall = GoogleFonts.poppins(
    fontSize: _FigmaFontHeight.xs,
    fontWeight: FontWeight.w400,
    height: _FigmaFontLineHeight.xs / _FigmaFontHeight.xs,
  );

  final bodyRegular = GoogleFonts.poppins(
    fontSize: _FigmaFontHeight.sm,
    fontWeight: FontWeight.w400,
    height: _FigmaFontLineHeight.sm / _FigmaFontHeight.sm,
  );

  final bodyMedium = GoogleFonts.poppins(
    fontSize: _FigmaFontHeight.sm,
    fontWeight: FontWeight.w500,
    height: _FigmaFontLineHeight.sm / _FigmaFontHeight.sm,
  );

  final bodySemiBold = GoogleFonts.poppins(
    fontSize: _FigmaFontHeight.sm,
    fontWeight: FontWeight.w600,
    height: _FigmaFontLineHeight.sm / _FigmaFontHeight.sm,
  );
}
