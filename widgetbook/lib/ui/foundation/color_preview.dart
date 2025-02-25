import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/foundation/color.dart';

class ColorPreview extends StatelessWidget {
  const ColorPreview({
    super.key,
    required this.name,
    required this.color,
  });

  final String name;
  final DesignSystemColor color;

  @override
  Widget build(BuildContext context) {
    final colorMap = <int, Color>{
      100: color.shade100,
      200: color.shade200,
      300: color.shade300,
      400: color.shade400,
      500: color.shade500,
      600: color.shade600,
      700: color.shade700,
      800: color.shade800,
      900: color.shade900,
    };

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
          ),
          const SizedBox(
            height: 8,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Row(
              children: [
                for (final entry in colorMap.entries)
                  Expanded(
                    child: _ColorShadePreview(
                      color: entry.value,
                      weight: entry.key,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorShadePreview extends StatelessWidget {
  const _ColorShadePreview({
    required this.color,
    required this.weight,
  });

  final Color color;
  final int weight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: color,
      child: Center(
        child: Text(
          weight.toString(),
          style: TextStyle(
            color: (weight > 400)
                ? const Color(0xFFFFFFFF)
                : const Color(0x00000000),
          ),
        ),
      ),
    );
  }
}
