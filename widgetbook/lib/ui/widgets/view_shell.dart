import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: ViewShell)
Widget buildViewShellDefaultUseCase(BuildContext context) {
  return ViewShell(
    child: Container(
      color: AppTheme.of(context).background.brand,
    ),
  );
}

@UseCase(name: 'Loading', type: ViewShell)
Widget buildViewShellLoadingUseCase(BuildContext context) {
  return const ViewShell.loading();
}

@UseCase(name: 'Error', type: ViewShell)
Widget buildViewShellLErrorUseCase(BuildContext context) {
  return const ViewShell.error();
}
