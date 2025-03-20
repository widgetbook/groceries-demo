import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groceries_app/data/mocks.dart';
import 'package:groceries_app/features/features.dart';
import 'package:groceries_app/root/root.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import '../../custom/view_state_knob.dart';

@UseCase(name: 'Default', type: BasketScreen)
Widget buildBasketScreenUseCase(BuildContext context) {
  return ProviderScope(
    overrides: [
      basketProvider.overrideWith(() {
        final state = context.knobs.viewState(
          allowedValues: [
            ViewState.empty,
            ViewState.data,
          ],
        );

        if (state == ViewState.empty) {
          return BasketNotifier();
        }

        final items = Map.fromEntries(
          MockDataStore.fruits
              .where((fruit) => fruit.name != 'Banana')
              .map((fruit) => MapEntry(fruit, 1)),
        );

        return BasketNotifier(
          Basket(items),
        );
      }),
    ],
    child: AppShell(
      activeRoute: AppRoute.basket,
      onRouteTap: (_) {},
      child: const BasketScreen(),
    ),
  );
}
