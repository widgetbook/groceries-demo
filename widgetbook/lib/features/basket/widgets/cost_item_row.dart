import 'package:flutter/widgets.dart';
import 'package:groceries_app/features/features.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: CostItemRow,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=7271-82082&t=Jj5fjVUaGAsV0QSp-4",
)
Widget buildAppBarUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: CostItemRow(
      label: context.knobs.string(
        label: 'label',
        initialValue: 'Delivery',
      ),
      cost: context.knobs.double.slider(
        label: 'Cost',
        initialValue: 5,
        max: 10000,
        divisions: 100,
      ),
    ),
  );
}
