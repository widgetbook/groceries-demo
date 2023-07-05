import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'default',
  type: PrimaryButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=86-1012&mode=dev',
)
Widget buildContinueButtonUseCase(BuildContext context) {
  return PrimaryButton(
    content: AppLocalizations.of(context)!.basketContinueToShipping,
  );
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppTheme.of(context).spacing.medium,
        horizontal: AppTheme.of(context).spacing.extraLarge,
      ),
      decoration: BoxDecoration(
        color: AppTheme.of(context).surface.brand,
        borderRadius: BorderRadius.circular(
          AppTheme.of(context).radius.full,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            content,
            style: AppTheme.of(context).typography.labelMedium14.copyWith(
                  color: AppTheme.of(context).surface.light,
                ),
          ),
          SizedBox(
            width: AppTheme.of(context).spacing.small,
          ),
          Icon(
            Icons.arrow_forward_rounded,
            color: AppTheme.of(context).surface.light,
          ),
        ],
      ),
    );
  }
}
