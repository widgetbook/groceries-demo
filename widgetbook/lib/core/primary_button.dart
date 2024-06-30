import 'package:flutter/material.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: PrimaryButton,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=86-1012&t=OwNskhPgyoe2Fkcc-4",
)
Widget buildContinueButtonUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: PrimaryButton(
      content: context.knobs.string(
        label: 'Content',
        initialValue: 'Continue to Shipping',
      ),
    ),
  );
}
