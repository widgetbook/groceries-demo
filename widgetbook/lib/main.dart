import 'package:flutter/material.dart';
import 'package:groceries_app/l10n/app_localizations.dart';
import 'package:groceries_app/theme/theme.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import 'addons/animation_addon.dart';
import 'components.book.dart';
import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      directories: [...directories, ...components],
      appBuilder: (context, child) => ColoredBox(
        color: const Color(0xFF404040),
        child: child,
      ),
      integrations: [
        WidgetbookCloudIntegration(),
      ],
      addons: [
        TimeDilationAddon(),
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
        AnimationStateAddon(name: 'A name'),
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
              style: theme.typography.bodyMedium16,
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
