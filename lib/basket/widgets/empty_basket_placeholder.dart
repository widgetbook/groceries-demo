import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: EmptyBasketPlaceholder,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=112-7193&mode=dev',
)
Widget buildEmptyBasketPlaceholderUseCase(BuildContext context) {
  return const EmptyBasketPlaceholder();
}

class EmptyBasketPlaceholder extends StatelessWidget {
  const EmptyBasketPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(
          maxWidth: 320,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 102,
              width: 102,
              decoration: BoxDecoration(
                color: AppTheme.of(context).surface.light,
                borderRadius: BorderRadius.circular(
                  AppTheme.of(context).radius.full,
                ),
              ),
              child: Icon(
                Icons.local_mall_outlined,
                size: 56,
                color: AppTheme.of(context).surface.secondary,
              ),
            ),
            SizedBox(
              height: AppTheme.of(context).spacing.medium,
            ),
            Text(
              AppLocalizations.of(context)!.basketEmpty,
              style: AppTheme.of(context).typography.headingMedium24,
            ),
            SizedBox(
              height: AppTheme.of(context).spacing.small,
            ),
            Text(
              AppLocalizations.of(context)!.basketEmptyMessage,
              textAlign: TextAlign.center,
              style: AppTheme.of(context).typography.bodyRegular14,
            ),
          ],
        ),
      ),
    );
  }
}
