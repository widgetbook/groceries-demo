import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale);

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
  ];

  /// No description provided for @fruitsBananaName.
  ///
  /// In en, this message translates to:
  /// **'Banana'**
  String get fruitsBananaName;

  /// No description provided for @fruitsAvocadoName.
  ///
  /// In en, this message translates to:
  /// **'Avocado'**
  String get fruitsAvocadoName;

  /// No description provided for @fruitsMangoName.
  ///
  /// In en, this message translates to:
  /// **'Mango'**
  String get fruitsMangoName;

  /// No description provided for @fruitsHeadline.
  ///
  /// In en, this message translates to:
  /// **'Fruits'**
  String get fruitsHeadline;

  /// No description provided for @fruitsGrownInCalifornia.
  ///
  /// In en, this message translates to:
  /// **'Grown in USA'**
  String get fruitsGrownInCalifornia;

  /// No description provided for @fruitsGrownInGermany.
  ///
  /// In en, this message translates to:
  /// **'Grown in Germany'**
  String get fruitsGrownInGermany;

  /// No description provided for @unit.
  ///
  /// In en, this message translates to:
  /// **'pcs'**
  String get unit;

  /// No description provided for @johnDoeFarm.
  ///
  /// In en, this message translates to:
  /// **'John Doe\'s Farm'**
  String get johnDoeFarm;

  /// No description provided for @widgetbookFarm.
  ///
  /// In en, this message translates to:
  /// **'Widgetbook Farm'**
  String get widgetbookFarm;

  /// No description provided for @basketContinueToShipping.
  ///
  /// In en, this message translates to:
  /// **'Continue to shipping'**
  String get basketContinueToShipping;

  /// No description provided for @basketHeadline.
  ///
  /// In en, this message translates to:
  /// **'Basket'**
  String get basketHeadline;

  /// No description provided for @basketTotal.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get basketTotal;

  /// No description provided for @basketSubtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get basketSubtotal;

  /// No description provided for @basketDelivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get basketDelivery;

  /// No description provided for @basketEmpty.
  ///
  /// In en, this message translates to:
  /// **'Your Basket is empty'**
  String get basketEmpty;

  /// No description provided for @basketEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'The basket is a gateway to a world of infinite possibilities, patiently awaiting your selection to bring it to life.'**
  String get basketEmptyMessage;

  /// No description provided for @startShopping.
  ///
  /// In en, this message translates to:
  /// **'Start shopping'**
  String get startShopping;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
