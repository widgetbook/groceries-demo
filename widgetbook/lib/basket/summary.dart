import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Summary,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=6809-5456&t=Jvcq3BxVyPK6l2OF-4",
)
Widget buildSummaryUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Summary(
      subTotal: context.knobs.double.slider(
        label: 'Subtotal',
        initialValue: 2,
        max: 1000,
      ),
      delivery: context.knobs.double.slider(
        label: 'Delivery',
        initialValue: 2,
        max: 10,
      ),
    ),
  );
}
