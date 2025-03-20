import 'package:flutter/material.dart' hide Icon;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/data.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

class AccountDataView extends StatelessWidget {
  const AccountDataView({
    super.key,
    required this.user,
    required this.onVerifyEmail,
  });

  final User user;
  final VoidCallback onVerifyEmail;

  @override
  Widget build(BuildContext context) {
    return ViewShell(
      child: Column(
        spacing: AppTheme.of(context).spacing.l,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AccountCard(
            name: user.name,
          ),
          if (!user.isVerified)
            PrimaryButton(
              content: 'Verify Email',
              onPressed: onVerifyEmail,
              leading: Icon(
                FontAwesomeIcons.circleExclamation,
                color: AppTheme.of(context).text.inverse,
              ),
            ),
        ],
      ),
    );
  }
}
