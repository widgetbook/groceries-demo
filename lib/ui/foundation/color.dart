import 'package:flutter/material.dart';

class DesignSystemColor extends ColorSwatch<int> {
  const DesignSystemColor._(super.primary, super.swatch);

  static const DesignSystemColor primary = DesignSystemColor._(
    0xFFEAE0D5,
    <int, Color>{
      100: Color(0xFFEAE0D5),
      200: Color(0xFFCBC3B9),
      300: Color(0xFFAEA69E),
      400: Color(0xFF918A83),
      500: Color(0xFF75706A),
      600: Color(0xFF5A5651),
      700: Color(0xFF413E3A),
      800: Color(0xFF292724),
      900: Color(0xFF131210),
    },
  );

  static const DesignSystemColor brand = DesignSystemColor._(
    0xFF36CBE2,
    <int, Color>{
      100: Color(0xFF36CBE2),
      200: Color(0xFF2DAEC2),
      300: Color(0xFF299FB2),
      400: Color(0xFF2491A2),
      500: Color(0xFF1C7684),
      600: Color(0xFF15616D),
      700: Color(0xFF0C424B),
      800: Color(0xFF0A363D),
      900: Color(0xFF071F23),
    },
  );

  static const DesignSystemColor grey = DesignSystemColor._(
    0xFFFFFFFF,
    <int, Color>{
      100: Color(0xFFFFFFFF),
      200: Color(0xFFF2F2F2),
      300: Color(0xFFE5E5E5),
      400: Color(0xFFB2B2B2),
      500: Color(0xFF8C8C8C),
      600: Color(0xFF595959),
      700: Color(0xFF404040),
      800: Color(0xFF262626),
      900: Color(0xFF000000),
    },
  );

  Color get shade100 => this[100]!;

  Color get shade200 => this[200]!;

  Color get shade300 => this[300]!;

  Color get shade400 => this[400]!;

  Color get shade500 => this[500]!;

  Color get shade600 => this[600]!;

  Color get shade700 => this[700]!;

  Color get shade800 => this[800]!;

  Color get shade900 => this[900]!;
}
