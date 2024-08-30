import 'package:flutter/widgets.dart';
import 'package:groceries_app/features/features.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Summary,
)
Widget buildSummaryUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Summary(
      subTotal:
          context.knobs.double.slider(label: 'subTotal', initialValue: 10),
      delivery: context.knobs.double.slider(label: 'delivery', initialValue: 5),
    ),
  );
}
