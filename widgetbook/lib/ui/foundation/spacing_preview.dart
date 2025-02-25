import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';

class SpacingPreview extends StatelessWidget {
  const SpacingPreview({
    super.key,
    required this.spacing,
    required this.name,
  });

  final double spacing;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(
              name,
            ),
          ),
          Container(
            height: 28,
            width: spacing,
            decoration: BoxDecoration(
              color: DesignSystemColor.brand.shade400,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text('${spacing.toStringAsFixed(0)}px'),
        ],
      ),
    );
  }
}
