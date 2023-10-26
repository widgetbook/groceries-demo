import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.of(context).surface.light,
        borderRadius: BorderRadius.circular(
          AppTheme.of(context).radius.small,
        ),
        border: Border.all(
          color: AppTheme.of(context).border.lowEmphasis,
        ),
      ),
      child: child,
    );
  }
}
