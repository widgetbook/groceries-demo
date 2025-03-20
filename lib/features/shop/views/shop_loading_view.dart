import 'package:flutter/widgets.dart';

import '../../../ui/ui.dart';

class ShopLoadingView extends StatelessWidget {
  const ShopLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ViewShell.loading();
  }
}
