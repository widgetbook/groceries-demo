import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: ContinueButton)
Widget buildContinueButtonUseCase(BuildContext context) {
  return const ContinueButton();
}

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppTheme.of(context).spacing.medium,
        horizontal: AppTheme.of(context).spacing.large,
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
            AppLocalizations.of(context)!.basketContinueToShipping,
            style: AppTheme.of(context).typography.labelMedium.copyWith(
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
