import 'package:flutter/material.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Add',
  type: QuantityButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-1996&mode=dev',
)
Widget buildQuantityButtonAddUseCase(BuildContext context) {
  return QuantityButton.add(
    onPressed: () {},
  );
}

@UseCase(
  name: 'Remove',
  type: QuantityButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=74-1996&mode=dev',
)
Widget buildQuantityButtonRemoveUseCase(BuildContext context) {
  return QuantityButton.remove(
    onPressed: () {},
  );
}

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  const QuantityButton.add({
    super.key,
    required this.onPressed,
  }) : icon = Icons.add_rounded;

  const QuantityButton.remove({
    super.key,
    required this.onPressed,
  }) : icon = Icons.remove_rounded;

  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(AppTheme.of(context).spacing.extraSmall),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppTheme.of(context).radius.full,
          ),
          border: Border.all(
            color: AppTheme.of(context).border.highEmphasis,
            width: 1,
          ),
        ),
        child: Icon(
          icon,
          size: 22,
          color: AppTheme.of(context).surface.invert,
        ),
      ),
    );
  }
}
