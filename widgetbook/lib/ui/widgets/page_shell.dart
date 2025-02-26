import 'package:flutter/material.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: PageShell,
  designLink:
      'https://www.figma.com/design/HsANkdhbsCNTkXBzNJRNLD/Groceries-Demo?node-id=6802-3379&t=N6qwmLP7MP59ClWB-4',
)
Widget buildPageShellUseCase(BuildContext context) {
  return PageShell(
    header: context.knobs.string(
      label: 'header',
      initialValue: 'Header',
    ),
    child: _Placeholder(
      context.knobs.color(
        label: 'color',
        initialValue: const Color(
          0xFFD9D9D9,
        ),
      ),
    ),
  );
}

class _Placeholder extends StatelessWidget {
  const _Placeholder(this.color);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
