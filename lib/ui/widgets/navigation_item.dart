import 'package:flutter/widgets.dart' hide Icon;

import 'icon.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({
    super.key,
    required this.isSelected,
    required this.iconUnselected,
    required this.iconSelected,
    required this.text,
  });

  final bool isSelected;
  final IconData iconUnselected;
  final IconData iconSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isSelected) Icon(iconSelected) else Icon(iconUnselected),
        Text(text),
      ],
    );
  }
}
