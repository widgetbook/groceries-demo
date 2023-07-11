import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Summary,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=112-6510&mode=dev',
)
Widget buildSummaryUseCase(BuildContext context) {
  return Summary(
    total: context.knobs.double.slider(
      label: 'Total',
      initialValue: 10,
      min: 0,
      max: 1000,
    ),
    delivery: context.knobs.double.slider(
      label: 'Delivery',
      initialValue: 2,
      min: 0,
      max: 10,
    ),
    subTotal: context.knobs.double.slider(
      label: 'Subtotal',
      initialValue: 2,
      min: 0,
      max: 1000,
    ),
  );
}

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
