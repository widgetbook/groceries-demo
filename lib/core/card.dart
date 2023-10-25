import 'package:flutter/material.dart';
import 'package:groceries_app/theme/app_theme.dart';

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
          // TODO It's currently not possible to link a variable to that Figma
          // property so we have this hard-coded for now
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
