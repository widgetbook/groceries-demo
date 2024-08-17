import 'package:flutter/widgets.dart';

import '../ui.dart';

class DesignSystemDivider extends StatelessWidget {
  const DesignSystemDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: AppTheme.of(context).border.color,
    );
  }
}
