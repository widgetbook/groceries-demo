import 'package:flutter/widgets.dart' hide Icon;

import '../ui.dart';

class NavigationItem extends StatelessWidget {
  const NavigationItem({
    super.key,
    required this.isSelected,
    required this.iconUnselected,
    required this.iconSelected,
    required this.text,
    this.showBadge = false,
    this.onTap,
  });

  final bool isSelected;
  final IconData iconUnselected;
  final IconData iconSelected;
  final String text;
  final bool showBadge;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isSelected) Icon(iconSelected) else Icon(iconUnselected),
              Text(
                text,
                style: AppTheme.of(context).typography.bodySmall,
              ),
            ],
          ),
          if (showBadge)
            Positioned(
              top: 2,
              right: 2,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: AppTheme.of(context).background.brand,
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
