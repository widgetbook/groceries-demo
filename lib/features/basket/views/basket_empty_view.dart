import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                title: context.tr('basketEmpty'),
                message: context.tr('basketEmptyMessage'),
              ),
            ),
          ),
          PrimaryButton(
            content: context.tr('startShopping'),
            onPressed: onStartShopping,
          ),
        ],
      ),
    );
  }
}
