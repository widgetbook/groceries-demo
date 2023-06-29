// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import 'widgetbook.directories.g.dart';

@UseCase(name: 'Placeholder', type: Placeholder)
Widget placeholder(BuildContext context) {
  return Text(AppLocalizations.of(context)!.helloWorld);
}

void main() {
  runApp(const WidgetbookApp());
}

@App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      directories: directories,
      appBuilder: (context, child) => child,
      addons: [
        LocalizationAddon(
          locales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13,
            Devices.ios.iPad,
          ],
        ),
        ThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: lightTheme,
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: darkTheme,
            ),
          ],
          themeBuilder: (context, theme, child) => ColoredBox(
            color: theme.surface.primary,
            child: DefaultTextStyle(
              style: theme.typography.bodyDefault,
              child: AppTheme(
                data: theme,
                child: child,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
