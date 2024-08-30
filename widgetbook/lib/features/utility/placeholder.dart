import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class Placeholder extends StatelessWidget {
  const Placeholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFD9D9D9),
    );
  }
}

@UseCase(
  name: 'Default',
  type: Placeholder,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6802-3280&t=zUakLdAaKjMZAqSq-4',
)
Widget placeholderUseCase(BuildContext context) {
  return const Placeholder();
}
