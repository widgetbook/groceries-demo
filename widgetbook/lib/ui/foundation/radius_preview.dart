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
    return Container(
      height: 120,
      width: 120,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppTheme.of(context).background.brand.withAlpha(50),
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          width: 2,
          color: AppTheme.of(context).background.brand,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${radius}px',
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
