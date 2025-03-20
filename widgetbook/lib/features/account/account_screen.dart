import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groceries_app/data/data.dart';
import 'package:groceries_app/features/features.dart';
import 'package:groceries_app/root/root.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import '../../custom/view_state_knob.dart';

@UseCase(name: 'Default', type: AccountScreen)
Widget buildAccountScreenUseCase(BuildContext context) {
  return ProviderScope(
    overrides: [
      userProvider.overrideWith((ref) {
        final state = context.knobs.viewState(
          allowedValues: [
            ViewState.data,
            ViewState.loading,
            ViewState.error,
          ],
        );

        return state.map(
          data: User(
            name: context.knobs.string(
              label: 'name',
              initialValue: 'John Doe',
            ),
            isVerified: context.knobs.boolean(
              label: 'isVerified',
            ),
          ),
        );
      }),
    ],
    child: AppShell(
      activeRoute: AppRoute.account,
      onRouteTap: (_) {},
      child: const AccountScreen(),
    ),
  );
}
