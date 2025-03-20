import 'package:flutter/widgets.dart' hide Icon;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../l10n/app_localizations.dart';
import '../../../ui/ui.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(
          AppTheme.of(context).spacing.m,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              FontAwesomeIcons.circleUser,
              scale: 2,
            ),
            Text(
              AppLocalizations.of(context)!.welcome,
              style: AppTheme.of(context).typography.label,
            ),
            Text(
              name,
              style: AppTheme.of(context).typography.headingLarge,
            ),
          ],
        ),
      ),
    );
  }
}
