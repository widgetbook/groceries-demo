import 'package:flutter/material.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: Badge)
Widget badge(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(8.0),
    child: Badge(
      number: 9,
    ),
  );
}

class Badge extends StatelessWidget {
  const Badge({
    super.key,
    required this.number,
  });

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14,
      height: 14,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: AppTheme.of(context).surface.feature,
        borderRadius: BorderRadius.circular(
          AppTheme.of(context).radius.full,
        ),
      ),
    );
  }
}
