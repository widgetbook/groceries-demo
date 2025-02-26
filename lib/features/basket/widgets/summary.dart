import 'package:flutter/widgets.dart';

import '../../../l10n/app_localizations.dart';
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
          label: AppLocalizations.of(context)!.basketSubtotal,
          cost: subTotal,
        ),
        CostItemRow(
          label: AppLocalizations.of(context)!.basketDelivery,
          cost: deliveryFees,
        ),
        CostItemRow(
          label: AppLocalizations.of(context)!.basketTotal,
          cost: total,
        ),
      ],
    );
  }
}
