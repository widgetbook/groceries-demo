import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../l10n/app_localizations.dart';
import '../../../ui/ui.dart';

class BasketEmptyView extends StatelessWidget {
  const BasketEmptyView({
    super.key,
    required this.onStartShopping,
  });

  final VoidCallback onStartShopping;

  @override
  Widget build(BuildContext context) {
    return ViewShell(
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: EmptyState(
                icon: FontAwesomeIcons.basketShopping,
                title: AppLocalizations.of(context)!.basketEmpty,
                message: AppLocalizations.of(context)!.basketEmptyMessage,
              ),
            ),
          ),
          PrimaryButton(
            content: AppLocalizations.of(context)!.startShopping,
            onPressed: onStartShopping,
          ),
        ],
      ),
    );
  }
}
