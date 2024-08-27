import 'package:flutter/material.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({
    super.key,
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
            color: (weight > 400) ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class ColorSwatchWidget extends StatelessWidget {
  const ColorSwatchWidget({
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
                    child: ColorWidget(
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

@UseCase(
  name: 'Default',
  type: DesignSystemColor,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7340-24552&t=uJW8KKcBrCOkO7C7-4',
)
Widget buildDesignSystemColorUseCase(BuildContext context) {
  return const Column(
    children: [
      ColorSwatchWidget(name: 'Primary', color: DesignSystemColor.primary),
      SizedBox(
        height: 16,
      ),
      ColorSwatchWidget(name: 'Brand', color: DesignSystemColor.brand),
      SizedBox(
        height: 16,
      ),
      ColorSwatchWidget(name: 'Grey', color: DesignSystemColor.grey),
    ],
  );
}
