import 'package:flutter/material.dart';

import '../../../ui/ui.dart';

class CostItemRow extends StatelessWidget {
  const CostItemRow({
    super.key,
    required this.label,
    required this.cost,
  });

  final String label;
  final double cost;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: AppTheme.of(context).typography.subheadingSmall,
        ),
        Text(
          '\$${cost.toStringAsFixed(2)}',
          style: AppTheme.of(context).typography.subheadingSmall,
        ),
      ],
    );
  }
}
