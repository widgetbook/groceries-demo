import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Wrap(
            children: color.keys
                .map(
                  (i) => _ColorShadePreview(
                    color: color[i]!,
                    weight: i,
                  ),
                )
                .toList(),
          ),
        ),
      ],
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
    const size = 56.0;

    return Container(
      height: size,
      width: size,
      color: color,
      child: Center(
        child: Text(
          weight.toString(),
          style: TextStyle(
            color: color.computeLuminance() < 0.5
                ? const Color(0xFFFFFFFF)
                : const Color(0xFF000000),
          ),
        ),
      ),
    );
  }
}
