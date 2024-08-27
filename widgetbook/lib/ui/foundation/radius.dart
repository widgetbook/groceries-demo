import 'package:flutter/material.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class RadiusWidget extends StatelessWidget {
  const RadiusWidget({
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

@UseCase(
  name: 'Default',
  type: DesignSystemRadius,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=7340-24769&t=uJW8KKcBrCOkO7C7-4',
)
Widget buildDesignSystemRadiusUseCase(BuildContext context) {
  return const SingleChildScrollView(
    child: Column(
      children: [
        RadiusWidget(
          name: 'none',
          radius: DesignSystemRadius.none,
        ),
        RadiusWidget(
          name: 'xs',
          radius: DesignSystemRadius.xs,
        ),
        RadiusWidget(
          name: 'sm',
          radius: DesignSystemRadius.sm,
        ),
        RadiusWidget(
          name: 'md',
          radius: DesignSystemRadius.md,
        ),
        RadiusWidget(
          name: 'lg',
          radius: DesignSystemRadius.lg,
        ),
        RadiusWidget(
          name: 'xl',
          radius: DesignSystemRadius.xl,
        ),
        RadiusWidget(
          name: 'xxl',
          radius: DesignSystemRadius.xxl,
        ),
        RadiusWidget(
          name: 'full',
          radius: DesignSystemRadius.full,
        ),
      ],
    ),
  );
}
