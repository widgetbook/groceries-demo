import 'package:flutter/widgets.dart' hide Icon;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ui.dart';

class ViewShell extends StatelessWidget {
  const ViewShell({
    super.key,
    required this.child,
  });

  const ViewShell.loading({
    super.key,
  }) : child = const Center(
          child: Loader(),
        );

  const ViewShell.error({
    super.key,
  }) : child = const Center(
          child: Icon(
            FontAwesomeIcons.circleXmark,
            scale: 2,
            color: Color(0xFFD32F2F),
          ),
        );

  final Widget child;

  /// Returns the padding value to be used in views that have lists as
  /// their root widget. Wrapping a [ListView] with a [Padding] widget will
  /// cause the padding to be applied around the entire list, not inside the
  /// list itself, causing the scroll bars to be misplaced.
  ///
  /// ```dart
  /// // Incorrect Usage
  /// ViewShell(
  ///   child: ListView(...)
  /// )
  ///
  /// // Correct Usage
  /// ListView(
  ///  padding: EdgeInsets.all(ViewShell.paddingOf(context)),
  /// )
  /// ```
  static double paddingOf(BuildContext context) {
    return AppTheme.of(context).spacing.m;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingOf(context)),
      child: child,
    );
  }
}
