import 'package:flutter/material.dart';
import 'package:groceries_app/theme/app_theme.dart';
// ignore: depend_on_referenced_packages
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Card,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-2014&mode=dev',
)
Widget card(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'This is some text',
          style: AppTheme.of(context).typography.bodyMedium16,
        ),
      ),
    ),
  );
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.of(context).surface.light,
        borderRadius: BorderRadius.circular(
          AppTheme.of(context).radius.small,
        ),
        border: Border.all(
          color: AppTheme.of(context).border.lowEmphasis,
          // TODO It's currently not possible to link a variable to that Figma
          // property so we have this hard-coded for now
          width: 1,
        ),
      ),
      child: child,
    );
  }
}
