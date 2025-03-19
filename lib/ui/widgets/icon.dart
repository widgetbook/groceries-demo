import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ui.dart';

class Icon extends StatelessWidget {
  const Icon(
    this.icon, {
    super.key,
    this.scale = 1,
    this.onTap,
    this.color,
  });

  final IconData icon;
  final double scale;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(AppTheme.of(context).spacing.xs),
        child: FaIcon(
          icon,
          size: 20 * scale,
          color: color ?? AppTheme.of(context).text.primary,
        ),
      ),
    );
  }
}
