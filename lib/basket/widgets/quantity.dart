import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class Quantity extends StatelessWidget {
  const Quantity({
    super.key,
    required this.value,
  });

  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppTheme.of(context).spacing.extraSmall + 1),
      width: AppTheme.of(context).spacing.extraExtraExtraLarge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppTheme.of(context).radius.full,
        ),
        border: Border.all(
          color: AppTheme.of(context).border.highEmphasis,
        ),
      ),
      child: Text(
        value.toString(),
        textAlign: TextAlign.center,
        style: AppTheme.of(context).typography.bodyMedium16,
      ),
    );
  }
}
