import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../l10n/app_localizations.dart';
import '../../theme/app_theme.dart';

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
