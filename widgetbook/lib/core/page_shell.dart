import 'package:flutter/material.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import '../utility/placeholder.dart' as util;

@UseCase(
  name: 'Default',
  type: PageShell,
  designLink:
      "https://www.figma.com/design/TQ3x8ohiB7XfUKSYeFVb7v/FlutterCon-'24?node-id=6802-3379&t=Jvcq3BxVyPK6l2OF-4",
)
Widget buildPageShellUseCase(BuildContext context) {
  return const PageShell(
    basketSize: 12,
    child: util.Placeholder(),
  );
}
