import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'features/about/about.dart';
import 'features/basket/basket.dart';
import 'l10n/app_localizations.dart';
import 'ui/ui.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: '/basket',
      builder: (context, state) {
        final state = BasketState.of(context);

        return BasketScreen(
          basket: state.basket,
          delivery: state.deliveryFees,
          subTotal: state.subTotal,
        );
      },
    ),
  ],
);

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
                  routerConfig: _router,
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
