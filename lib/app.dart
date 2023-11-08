import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'basket/basket.dart';
import 'home/home.dart';
import 'l10n/app_localizations.dart';
import 'theme/theme.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => BasketScope(
        state: BasketState(),
        child: Builder(
          builder: (context) {
            final basketState = BasketState.of(context);
            return HomeScreen(
              fruits: basketState.store.keys.toList(),
            );
          },
        ),
      ),
    ),
    // GoRoute(
    //   path: '/basket',
    //   builder: (context, state) => BasketScreen(
    //     fruits: Map.fromIterable(getFruits(context)),
    //   ),
    // ),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      data: MediaQuery.of(context).platformBrightness == Brightness.light
          ? lightTheme
          : darkTheme,
      child: Builder(
        builder: (context) {
          return ColoredBox(
            color: AppTheme.of(context).surface.primary,
            child: SafeArea(
              child: WidgetsApp.router(
                debugShowCheckedModeBanner: false,
                color: lightTheme.surface.primary,
                routerConfig: _router,
                title: 'Grocery App',
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
              ),
            ),
          );
        },
      ),
    );
  }
}
