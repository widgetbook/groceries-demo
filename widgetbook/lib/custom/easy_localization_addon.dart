import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:widgetbook/widgetbook.dart';

class EasyLocalizationAddon extends WidgetbookAddon<Locale> {
  EasyLocalizationAddon(this.locales) : super(name: 'Localization');

  final List<Locale> locales;

  @override
  List<Field> get fields {
    return [
      ListField<Locale>(
        name: 'name',
        values: locales,
        initialValue: locales.first,
        labelBuilder: (locale) => locale.toLanguageTag(),
      ),
    ];
  }

  @override
  Locale valueFromQueryGroup(Map<String, String> group) {
    return valueOf('name', group)!;
  }

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    Locale setting,
  ) {
    return EasyLocalization(
      key: Key(setting.toLanguageTag()), // Force a rebuild
      startLocale: setting,
      supportedLocales: locales,
      path: 'packages/assets/translations',
      child: Builder(
        builder: (context) {
          return Localizations(
            locale: setting,
            delegates: context.localizationDelegates,
            child: child,
          );
        },
      ),
    );
  }
}
