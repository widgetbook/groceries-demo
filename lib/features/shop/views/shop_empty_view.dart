import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../l10n/app_localizations.dart';
import '../../../ui/ui.dart';

class ShopEmptyView extends StatelessWidget {
  const ShopEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewShell(
      child: Center(
        child: EmptyState(
          icon: FontAwesomeIcons.shop,
          title: AppLocalizations.of(context)!.shopNoItemsFound,
          message: AppLocalizations.of(context)!.shopNoItemsFoundMessage,
        ),
      ),
    );
  }
}
