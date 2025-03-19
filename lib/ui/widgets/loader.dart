import 'package:flutter/material.dart';

import '../ui.dart';

class Loader extends StatefulWidget {
  const Loader({super.key});

  @override
  LoaderState createState() => LoaderState();
}

class LoaderState extends State<Loader> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return CustomPaint(
            size: const Size.square(40),
            painter: _LoaderPainter(
              value: _controller.value,
              stroke: 2,
              borderRadius: AppTheme.of(context).radius.md,
              color: AppTheme.of(context).background.brand,
            ),
          );
        },
      ),
    );
  }
}

class _LoaderPainter extends CustomPainter {
  _LoaderPainter({
    required this.stroke,
    required this.color,
    required this.value,
    required this.borderRadius,
  });

  final double stroke;
  final Color color;
  final double value;
  final double borderRadius;

  @override
  void paint(Canvas canvas, Size size) {
    final rectangle = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: size.width,
      height: size.height,
    );

    final roundedRectangle = RRect.fromRectAndRadius(
      rectangle,
      Radius.circular(borderRadius),
    );

    final path = Path()..addRRect(roundedRectangle);
    final pathPaint = Paint()
      ..color = color.withAlpha(120)
      ..strokeWidth = stroke
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final percentPath = Path();
    final percentPaint = Paint()
      ..color = color
      ..strokeWidth = stroke + 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    for (final pathMetric in path.computeMetrics()) {
      percentPath.addPath(
        pathMetric.extractPath(0, pathMetric.length * value),
        Offset.zero,
      );
    }

    canvas
      ..drawPath(path, pathPaint)
      ..drawPath(percentPath, percentPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
