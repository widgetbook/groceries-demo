import 'package:flutter/material.dart';
import 'package:groceries_app/theme/app_theme.dart';
// ignore: depend_on_referenced_packages
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: Card)
Widget card(BuildContext context) {
  return const Padding(
    padding: EdgeInsets.all(8.0),
    child: Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'This is some text',
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
        color: AppTheme.of(context).surface.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: child,
    );
  }
}
