import 'package:flutter/material.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: Quantity)
Widget buildQuantityUseCase(BuildContext context) {
  return const Quantity(
    value: 1,
  );
}

class Quantity extends StatelessWidget {
  const Quantity({
    super.key,
    required this.value,
  });

  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppTheme.of(context).spacing.extraExtraExtraLarge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppTheme.of(context).radius.full,
        ),
        border: Border.all(
          color: AppTheme.of(context).border.highEmphasis,
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(AppTheme.of(context).spacing.extraSmall),
        child: Text(
          value.toString(),
          textAlign: TextAlign.center,
          style: AppTheme.of(context).typography.bodyMedium16,
        ),
      ),
    );
  }
}
