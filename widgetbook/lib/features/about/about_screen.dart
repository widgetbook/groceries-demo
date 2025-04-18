import 'package:flutter/widgets.dart';
import 'package:groceries_app/features/about/about.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AboutScreen,
)
Widget buildAboutScreenUseCase(BuildContext context) {
  // This use-case demonstrates how assets are loaded in
  // both app package and widgetbook package simultaneously.
  return AboutScreen(
    onGoBack: () {},
  );
}
