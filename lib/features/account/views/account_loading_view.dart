import 'package:flutter/widgets.dart';

import '../../../ui/ui.dart';

class AccountLoadingView extends StatelessWidget {
  const AccountLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ViewShell.loading();
  }
}
