import 'package:flutter/widgets.dart';
import 'package:groceries_app/data/data.dart';
import 'package:groceries_app/features/features.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AccountDataView,
)
Widget buildAccountDataViewUseCase(BuildContext context) {
  return AccountDataView(
    onVerifyEmail: () {},
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
