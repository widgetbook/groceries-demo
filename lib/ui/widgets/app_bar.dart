import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ui.dart';

class DesignSystemAppBar extends StatelessWidget {
  const DesignSystemAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppTheme.of(context).spacing.xs,
        horizontal: AppTheme.of(context).spacing.sm,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTheme.of(context).typography.subheadingLarge,
          ),
          SizedBox(
            width: AppTheme.of(context).spacing.xs,
          ),
          const DesignSystemIcon(FontAwesomeIcons.bell),
        ],
      ),
    );
  }
}
