import 'package:flutter/widgets.dart';

class TextThemeData {
  const TextThemeData({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.inactive,
    required this.inverse,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color inactive;
  final Color inverse;
}
