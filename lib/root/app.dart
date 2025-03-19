import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../l10n/app_localizations.dart';
import '../ui/ui.dart';
import 'router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: AppTheme(
        data: MediaQuery.of(context).platformBrightness == Brightness.light
            ? AppThemeData.light
            : AppThemeData.dark,
        child: Builder(
          builder: (context) {
            return ColoredBox(
              color: AppTheme.of(context).background.primary,
              child: SafeArea(
                child: WidgetsApp.router(
                  title: 'Grocery App',
                  debugShowCheckedModeBanner: false,
                  color: AppTheme.of(context).background.primary,
                  routerConfig: router,
                  supportedLocales: AppLocalizations.supportedLocales,
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
