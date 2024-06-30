import 'package:flutter/widgets.dart';
import 'package:groceries_app/core/core.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import '../utility/placeholder.dart' as utility;

@UseCase(
  name: 'Default',
  type: ResponsiveLayout,
  designLink:
      'https://www.figma.com/design/OsLeJAAv09GZwyCWWPCR1n/refactor?node-id=6802-3376&t=1B8M6TeC2N4MqCDc-4',
)
Widget responsiveLayoutUseCase(BuildContext context) {
  return ResponsiveLayout(
    headline: context.knobs.string(
      label: 'Headline',
      initialValue: 'Headline',
    ),
    content: const utility.Placeholder(),
  );
}

@UseCase(
  name: 'Sticky Footer',
  type: ResponsiveLayout,
  designLink:
      'https://www.figma.com/design/OsLeJAAv09GZwyCWWPCR1n/refactor?node-id=6802-3376&t=1B8M6TeC2N4MqCDc-4',
)
Widget responsiveLayoutStickyFooterUseCase(BuildContext context) {
  return ResponsiveLayout(
    headline: context.knobs.string(
      label: 'Headline',
      initialValue: 'Headline',
    ),
    content: const utility.Placeholder(),
    footer: const utility.Placeholder(),
  );
}
