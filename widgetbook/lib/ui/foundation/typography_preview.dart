import 'package:flutter/widgets.dart';

class TypographyPreview extends StatelessWidget {
  const TypographyPreview({
    super.key,
    required this.name,
    required this.style,
  });

  final String name;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: style,
    );
  }
}
