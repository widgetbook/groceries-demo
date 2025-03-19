import 'package:flutter/widgets.dart';

import '../ui.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    super.key,
    required this.navItems,
  });

  final List<NavigationItem> navItems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppTheme.of(context).spacing.l,
        vertical: AppTheme.of(context).spacing.xxs,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: navItems,
      ),
    );
  }
}
