import 'package:flutter/material.dart';
import 'package:groceries_app/l10n/app_localizations.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import 'addons/github_addon.dart';
import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@App(
  cloudAddonsConfigs: {
    'German Light': [
      LocalizationAddonConfig('de'),
      ThemeAddonConfig('Light'),
    ],
    'German Dark': [
      LocalizationAddonConfig('de'),
      ThemeAddonConfig('Dark'),
    ],
    'English Light': [
      LocalizationAddonConfig('en'),
      ThemeAddonConfig('Light'),
    ],
    'English Dark': [
      LocalizationAddonConfig('en'),
      ThemeAddonConfig('Dark'),
    ],
  },
)
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      directories: directories,
      appBuilder: (context, child) => ColoredBox(
        color: const Color(0xFF404040),
        child: child,
      ),
      addons: [
        GitHubAddon('widgetbook/groceries-demo'),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13,
            Devices.ios.iPad,
          ],
          initialDevice: Devices.ios.iPhone13,
        ),
        InspectorAddon(),
        LocalizationAddon(
          locales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          initialLocale: AppLocalizations.supportedLocales.last,
        ),
        ThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: AppThemeData.light,
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: AppThemeData.dark,
            ),
          ],
          themeBuilder: (context, theme, child) => ColoredBox(
            color: theme.background.primary,
            child: DefaultTextStyle(
              style: theme.typography.bodyMedium,
              child: AppTheme(
                data: theme,
                child: child,
              ),
            ),
          ),
        ),
        AlignmentAddon(),
        BuilderAddon(
          name: 'SafeArea',
          builder: (_, child) => SafeArea(
            child: child,
          ),
        ),
      ],
    );
  }
}
