import 'package:flutter/widgets.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: ContinueButton)
Widget buildContinueButtonUseCase(BuildContext context) {
  return const ContinueButton(
    title: 'Continue to shipping',
  );
}

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.of(context).surface.brand,
    );
  }
}
