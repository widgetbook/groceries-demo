import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:groceries_app/theme/app_theme.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: EmptyBasketPlaceholder)
Widget buildEmptyBasketPlaceholderUseCase(BuildContext context) {
  return const EmptyBasketPlaceholder();
}

class EmptyBasketPlaceholder extends StatelessWidget {
  const EmptyBasketPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 104,
            width: 104,
            decoration: BoxDecoration(
              color: AppTheme.of(context).surface.light,
              borderRadius: BorderRadius.circular(
                AppTheme.of(context).radius.full,
              ),
            ),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: AppTheme.of(context).surface.invert,
            ),
          ),
          SizedBox(
            height: AppTheme.of(context).spacing.medium,
          ),
          Text(
            AppLocalizations.of(context)!.basketEmpty,
            style: AppTheme.of(context).typography.headingMedium24,
          ),
        ],
      ),
    );
  }
}
