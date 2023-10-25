import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceries_app/theme/app_theme.dart';

import '../../l10n/app_localizations.dart';

class Summary extends StatelessWidget {
  const Summary({
    super.key,
    required this.total,
    required this.delivery,
    required this.subTotal,
  });

  final double total;
  final double delivery;
  final double subTotal;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 1,
          color: AppTheme.of(context).border.highEmphasis,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.small,
        ),
        Row(
          children: [
            Text(
              AppLocalizations.of(context)!.basketSubtotal,
              style: AppTheme.of(context).typography.subheadingRegular16,
            ),
            Expanded(child: Container()),
            Text(
              '\$${subTotal.toStringAsFixed(2)}',
              style: AppTheme.of(context).typography.subheadingRegular16,
            ),
          ],
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.small,
        ),
        Row(
          children: [
            Text(
              AppLocalizations.of(context)!.basketDelivery,
              style: AppTheme.of(context).typography.subheadingRegular16,
            ),
            Expanded(child: Container()),
            Text(
              '\$${delivery.toStringAsFixed(2)}',
              style: AppTheme.of(context).typography.subheadingRegular16,
            ),
          ],
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.small,
        ),
        Row(
          children: [
            Text(
              AppLocalizations.of(context)!.basketTotal,
              style: AppTheme.of(context).typography.subheadingMedium20,
            ),
            Expanded(child: Container()),
            Text(
              '\$${total.toStringAsFixed(2)}',
              style: AppTheme.of(context).typography.subheadingMedium20,
            ),
          ],
        ),
      ],
    );
  }
}
