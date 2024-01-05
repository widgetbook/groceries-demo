import 'dart:math';

import 'package:flutter/material.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import 'group.dart';

@UseCase(
  name: 'Spacing',
  type: SpacingThemeData,
  path: '[Theme]/spacing',
)
Widget buildWidgetbookSpacingUseCase(BuildContext context) {
  return WidgetbookGroup(
    label: 'Spacing',
    children: [
      WidgetbookSpacing(
        label: 'None',
        spacing: AppTheme.of(context).spacing.none,
      ),
      WidgetbookSpacing(
        label: 'xs',
        spacing: AppTheme.of(context).spacing.extraSmall,
      ),
      WidgetbookSpacing(
        label: 'small',
        spacing: AppTheme.of(context).spacing.small,
      ),
      WidgetbookSpacing(
        label: 'medium',
        spacing: AppTheme.of(context).spacing.medium,
      ),
      WidgetbookSpacing(
        label: 'large',
        spacing: AppTheme.of(context).spacing.large,
      ),
      WidgetbookSpacing(
        label: 'xl',
        spacing: AppTheme.of(context).spacing.extraLarge,
      ),
      WidgetbookSpacing(
        label: '2xl',
        spacing: AppTheme.of(context).spacing.extraExtraLarge,
      ),
      WidgetbookSpacing(
        label: '3xl',
        spacing: AppTheme.of(context).spacing.extraExtraExtraLarge,
      ),
    ],
  );
}

class LineContainer extends StatelessWidget {
  const LineContainer({
    super.key,
    this.lineWidth = 2.0,
    this.lineSpacing = 5.0,
  });

  final double lineWidth;
  final double lineSpacing;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: CustomPaint(
        painter: LinePainter(lineWidth: lineWidth, lineSpacing: lineSpacing),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  LinePainter({
    required this.lineWidth,
    required this.lineSpacing,
  });
  final double lineWidth;
  final double lineSpacing;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFE93EB0)
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke;

    final path = Path();

    for (var x = -max(size.width, size.height);
        x <= 2 * max(size.width, size.height);
        x += lineSpacing) {
      path
        ..moveTo(x, 0)
        ..lineTo(x + size.height, size.height);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class WidgetbookSpacing extends StatelessWidget {
  const WidgetbookSpacing({
    required this.spacing,
    required this.label,
    super.key,
    this.color,
  });

  final String label;
  final double spacing;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theColor = color ?? AppTheme.of(context).surface.secondary;
    return Row(
      children: [
        Expanded(
          child: Text(label),
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: Text(
            spacing.toString(),
          ),
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: theColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                width: 24,
                height: 24,
              ),
              SizedBox(
                width: spacing,
                height: 24,
                child: const LineContainer(),
              ),
              Container(
                decoration: BoxDecoration(
                  color: theColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                width: 24,
                height: 24,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
