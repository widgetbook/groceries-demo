import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'features/basket/basket.dart';
import 'l10n/app_localizations.dart';
import 'router.dart';
import 'ui/ui.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      data: MediaQuery.of(context).platformBrightness == Brightness.light
          ? AppThemeData.light
          : AppThemeData.dark,
      child: Builder(
        builder: (context) {
          return BasketScope(
            child: ColoredBox(
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
            ),
          );
        },
      ),
    );
  }
}
