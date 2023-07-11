import 'package:flutter/material.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Quantity,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-1996&mode=dev',
)
Widget buildQuantityUseCase(BuildContext context) {
  return Quantity(
    value: context.knobs.double
        .slider(
          label: 'Value',
          initialValue: 2,
          min: 0,
          max: 1000,
        )
        .toInt(),
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
      padding: EdgeInsets.all(AppTheme.of(context).spacing.extraSmall + 1),
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
      child: Text(
        value.toString(),
        textAlign: TextAlign.center,
        style: AppTheme.of(context).typography.bodyMedium16,
      ),
    );
  }
}
