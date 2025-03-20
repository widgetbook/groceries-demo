import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Loader,
)
Widget buildLoaderUseCase(BuildContext context) {
  return const Loader();
}
