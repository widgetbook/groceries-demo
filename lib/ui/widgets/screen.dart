import 'package:flutter/widgets.dart';

import '../ui.dart';

class Screen extends StatelessWidget {
  const Screen({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        AppTheme.of(context).spacing.m,
      ),
      child: child,
    );
  }
}
