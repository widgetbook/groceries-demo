import 'package:flutter/widgets.dart';
import 'package:groceries_app/data/user/user.dart';
import 'package:groceries_app/features/account/account.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AccountScreen,
)
Widget buildBasketScreenEmptyUseCase(BuildContext context) {
  return AccountScreen(
    onVerifyEmail: () => {},
    user: User(
      name: context.knobs.string(
        label: 'name',
        initialValue: 'John Doe',
      ),
      isVerified: context.knobs.boolean(
        label: 'isVerified',
      ),
    ),
  );
}
