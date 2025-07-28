import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:groceries_app/l10n/app_localizations.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import 'custom/github_addon.dart';
import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@App(
  cloudAddonsConfigs: {
    'Dark': [ThemeAddonConfig('Dark')],
    'Light': [ThemeAddonConfig('Light')],
  },
)
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      directories: directories,
      appBuilder: (context, child) =>
          ColoredBox(color: const Color(0xFF404040), child: child),
      addons: [
        BuilderAddon(
          name: 'Disable Animations (Cloud)',
          builder: (context, child) {
            // In Widgetbook Cloud context, disable the animations
            // so that the [Loader] widget doesn't show up in all
            // the reviews' diffs.
            if (WidgetbookState.of(context).previewMode) {
              timeDilation = double.maxFinite;
            }

            return child;
          },
        ),
        GitHubAddon('widgetbook/groceries-demo'),
        DeviceFrameAddon(
          devices: [Devices.ios.iPhone13, Devices.ios.iPad],
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
            WidgetbookTheme(name: 'Light', data: AppThemeData.light),
            WidgetbookTheme(name: 'Dark', data: AppThemeData.dark),
          ],
          themeBuilder: (context, theme, child) =>
              AppTheme(data: theme, child: child),
        ),
        AlignmentAddon(),
        TextScaleAddon(),
        BuilderAddon(
          name: 'SafeArea',
          builder: (_, child) => SafeArea(child: child),
        ),
        SemanticsAddon(),
      ],
    );
  }
}
