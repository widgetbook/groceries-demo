import 'package:flutter/widgets.dart';
import 'package:groceries_app/features/features.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: Summary,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=7271-82082&t=Jj5fjVUaGAsV0QSp-4",
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
