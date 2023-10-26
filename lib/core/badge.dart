import 'package:flutter/material.dart';

import '../theme/theme.dart';

class Badge extends StatelessWidget {
  const Badge({
    super.key,
    required this.number,
  });

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14,
      height: 14,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: AppTheme.of(context).surface.feature,
        borderRadius: BorderRadius.circular(
          AppTheme.of(context).radius.full,
        ),
      ),
    );
  }
}
