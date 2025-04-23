import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';

import '../../../ui/ui.dart';
import 'cost_item_row.dart';

class Summary extends StatelessWidget {
  const Summary({
    super.key,
    required this.subTotal,
    required this.deliveryFees,
  });

  final double subTotal;
  final double deliveryFees;

  double get total => subTotal + deliveryFees;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: AppTheme.of(context).spacing.xxs,
      children: [
        const Divider(),
        CostItemRow(
          label: context.tr('basketSubtotal'),
          cost: subTotal,
        ),
        CostItemRow(
          label: context.tr('basketDelivery'),
          cost: deliveryFees,
        ),
        CostItemRow(
          label: context.tr('basketTotal'),
          cost: total,
        ),
      ],
    );
  }
}
