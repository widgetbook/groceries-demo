import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../ui/ui.dart';
import 'router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.platformBrightnessOf(context);

    return EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('de')],
      path: 'packages/assets/translations',
      child: ProviderScope(
        child: AppTheme(
          data: brightness == Brightness.light
              ? AppThemeData.light
              : AppThemeData.dark,
          child: Builder(
            builder: (context) {
              return WidgetsApp.router(
                title: 'Grocery App',
                debugShowCheckedModeBanner: false,
                color: AppTheme.of(context).background.primary,
                routerConfig: router,
                locale: context.locale,
                supportedLocales: context.supportedLocales,
                localizationsDelegates: context.localizationDelegates,
              );
            },
          ),
        ),
      ),
    );
  }
}
