import 'package:flutter/widgets.dart';

import '../ui.dart';

class Divider extends StatelessWidget {
  const Divider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: AppTheme.of(context).border.color,
    );
  }
}
