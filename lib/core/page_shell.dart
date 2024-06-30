import 'package:flutter/widgets.dart';

import '../theme/theme.dart';
import 'core.dart';

class PageShell extends StatelessWidget {
  const PageShell({super.key, required this.child, required this.basketSize});

  final Widget child;
  final int basketSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          title: 'Groceries App',
          basketSize: basketSize,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.small,
        ),
        Expanded(child: child),
      ],
    );
  }
}
