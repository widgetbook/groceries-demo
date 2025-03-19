import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groceries_app/data/mocks.dart';
import 'package:groceries_app/features/features.dart';
import 'package:groceries_app/root/root.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import '../../custom/view_state_knob.dart';

@UseCase(name: 'Default', type: ShopScreen)
Widget buildShopScreenUseCase(BuildContext context) {
  return ProviderScope(
    overrides: [
      fruitsProvider.overrideWith((ref) {
        final state = context.knobs.viewState();
        return state.map(
          data: MockDataStore.fruits,
          empty: [],
        );
      }),
    ],
    child: AppShell(
      activeRoute: AppRoute.shop,
      onRouteTap: (_) {},
      child: const ShopScreen(),
    ),
  );
}
