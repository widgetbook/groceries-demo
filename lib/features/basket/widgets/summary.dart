import 'package:flutter/widgets.dart';

import '../../../l10n/app_localizations.dart';
import '../../../ui/ui.dart';
import 'cost_item_row.dart';

class Summary extends StatelessWidget {
  const Summary({
    super.key,
    required this.subTotal,
    required this.delivery,
  });

  final double subTotal;
  final double delivery;

  double get total => subTotal + delivery;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(),
        SizedBox(
          height: AppTheme.of(context).spacing.xxs,
        ),
        CostItemRow(
          label: AppLocalizations.of(context)!.basketSubtotal,
          cost: subTotal,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.xxs,
        ),
        CostItemRow(
          label: AppLocalizations.of(context)!.basketDelivery,
          cost: delivery,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.xxs,
        ),
        CostItemRow(
          label: AppLocalizations.of(context)!.basketTotal,
          cost: total,
        ),
      ],
    );
  }
}
