import 'package:flutter/material.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Add',
  type: QuantityButton,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=146-1536&t=OwNskhPgyoe2Fkcc-4",
)
Widget buildQuantityButtonAddUseCase(BuildContext context) {
  return const QuantityButton.add();
}

@UseCase(
  name: 'Remove',
  type: QuantityButton,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=146-1536&t=OwNskhPgyoe2Fkcc-4",
)
Widget buildQuantityButtonRemoveUseCase(BuildContext context) {
  return const QuantityButton.remove();
}
