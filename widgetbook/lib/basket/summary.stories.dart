import 'package:flutter/widgets.dart';
import 'package:groceries_app/basket/basket.dart';
import 'package:widgetbook/next.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

part 'summary.stories.book.dart';

final meta = Meta<Summary>();

final Default = SummaryStory(
  name: 'Default',
  args: SummaryArgs(
    delivery: const DoubleArg(
      value: 2,
    ),
    subTotal: const DoubleArg(
      value: 2,
    ),
  ),
);

@UseCase(
  name: 'Default',
  type: Summary,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=112-6510&mode=dev',
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
