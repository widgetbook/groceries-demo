import 'package:flutter/material.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import '../utility/placeholder.dart' as util;

@UseCase(
  name: 'Default',
  type: PageShell,
  designLink:
      'https://www.figma.com/design/OsLeJAAv09GZwyCWWPCR1n/refactor?node-id=6802-3379&t=1B8M6TeC2N4MqCDc-4',
)
Widget buildPageShellUseCase(BuildContext context) {
  return const PageShell(
    basketSize: 12,
    child: util.Placeholder(),
  );
}
