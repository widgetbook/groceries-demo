import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/widgets/basket_summary.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: BasketSummary,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=6809-5479&t=Jvcq3BxVyPK6l2OF-4",
)
Widget buildBasketSummaryUseCase(BuildContext context) {
  return BasketSummary(
    delivery: context.knobs.double.input(
      label: 'Delivery',
      initialValue: 5,
    ),
    subTotal: context.knobs.double.input(
      label: 'Sub Total',
      initialValue: 10,
    ),
  );
}
