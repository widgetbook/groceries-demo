import 'package:flutter/material.dart';

import '../../core/primary_button.dart';
import '../../l10n/app_localizations.dart';
import '../../theme/app_theme.dart';
import 'summary.dart';

class BasketSummary extends StatelessWidget {
  const BasketSummary({
    super.key,
    required this.delivery,
    required this.subTotal,
  });

  final double delivery;
  final double subTotal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Summary(
          delivery: delivery,
          subTotal: subTotal,
        ),
        SizedBox(
          height: AppTheme.of(context).spacing.large,
        ),
        PrimaryButton(
          content: AppLocalizations.of(context)!.basketContinueToShipping,
        ),
      ],
    );
  }
}
