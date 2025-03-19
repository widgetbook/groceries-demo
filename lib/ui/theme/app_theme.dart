import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'app_theme_data.dart';

class AppTheme extends StatelessWidget {
  const AppTheme({
    super.key,
    required this.data,
    required this.child,
  });

  final AppThemeData data;
  final Widget child;

  static AppThemeData of(BuildContext context) {
    return _InheritedAppTheme.of(context);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: data.typography.bodyRegular,
      child: _InheritedAppTheme(
        data: data,
        child: child,
      ),
    );
  }
}

class _InheritedAppTheme extends InheritedWidget {
  const _InheritedAppTheme({
    required this.data,
    required super.child,
  });

  final AppThemeData data;

  static AppThemeData of(BuildContext context) {
    final widget =
        context.dependOnInheritedWidgetOfExactType<_InheritedAppTheme>();
    return widget!.data;
  }

  @override
  bool updateShouldNotify(covariant _InheritedAppTheme oldWidget) {
    return data != oldWidget.data;
  }
}
