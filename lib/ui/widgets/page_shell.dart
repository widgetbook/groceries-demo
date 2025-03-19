import 'package:flutter/widgets.dart';

import '../ui.dart';

class PageShell extends StatelessWidget {
  const PageShell({
    super.key,
    required this.child,
    required this.title,
    this.action,
    this.navItems,
  });

  final Widget child;
  final String title;
  final Widget? action;
  final List<NavigationItem>? navItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppBar(
          title: title,
          action: action,
        ),
        const Divider(),
        Expanded(
          child: child,
        ),
        const Divider(),
        if (navItems != null)
          BottomNavigationBar(
            navItems: navItems!,
          ),
      ],
    );
  }
}
