import 'package:flutter/widgets.dart' hide Icon;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ui.dart';

class AppBar extends StatelessWidget {
  const AppBar({
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
          const Icon(FontAwesomeIcons.bell),
        ],
      ),
    );
  }
}
