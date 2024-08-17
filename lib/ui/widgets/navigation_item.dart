import 'package:flutter/widgets.dart';

import 'icon.dart';

class DesignSystemNavigationItem extends StatelessWidget {
  const DesignSystemNavigationItem({
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
        if (isSelected)
          DesignSystemIcon(iconSelected)
        else
          DesignSystemIcon(iconUnselected),
        Text(text),
      ],
    );
  }
}
