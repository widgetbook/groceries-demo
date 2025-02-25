import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';

class RadiusPreview extends StatelessWidget {
  const RadiusPreview({
    super.key,
    required this.name,
    required this.radius,
  });

  final double radius;
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
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: DesignSystemColor.brand.shade400.withOpacity(0.15),
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(
                width: 2,
                color: DesignSystemColor.brand.shade400,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text('${radius.toStringAsFixed(0)}px'),
        ],
      ),
    );
  }
}
