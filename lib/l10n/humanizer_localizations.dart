
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'humanizer_localizations_en.dart';
import 'humanizer_localizations_nb.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations returned
/// by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'gen_l10n/humanizer_localizations.dart';
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
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
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
    Locale('en'),
    Locale('nb')
  ];

  /// No description provided for @cubicNanometer.
  ///
  /// In en, this message translates to:
  /// **'cubic nanometer'**
  String get cubicNanometer;

  /// No description provided for @cubicMicrometer.
  ///
  /// In en, this message translates to:
  /// **'cubic micrometer'**
  String get cubicMicrometer;

  /// No description provided for @cubicMillimeter.
  ///
  /// In en, this message translates to:
  /// **'cubic millimeter'**
  String get cubicMillimeter;

  /// No description provided for @centiliter.
  ///
  /// In en, this message translates to:
  /// **'centiliter'**
  String get centiliter;

  /// No description provided for @deciliter.
  ///
  /// In en, this message translates to:
  /// **'deciliter'**
  String get deciliter;

  /// No description provided for @milliliter.
  ///
  /// In en, this message translates to:
  /// **'milliliter'**
  String get milliliter;

  /// No description provided for @liter.
  ///
  /// In en, this message translates to:
  /// **'Liter'**
  String get liter;

  /// No description provided for @cubicMeter.
  ///
  /// In en, this message translates to:
  /// **'Cubic meter'**
  String get cubicMeter;

  /// No description provided for @cubicDecameter.
  ///
  /// In en, this message translates to:
  /// **'Cubic decameter'**
  String get cubicDecameter;

  /// No description provided for @cubicKilometer.
  ///
  /// In en, this message translates to:
  /// **'Cubic kilometer'**
  String get cubicKilometer;

  /// No description provided for @cubicMegameter.
  ///
  /// In en, this message translates to:
  /// **'Cubic megameter'**
  String get cubicMegameter;

  /// No description provided for @cubicGigameter.
  ///
  /// In en, this message translates to:
  /// **'Cubic gigameter'**
  String get cubicGigameter;

  /// No description provided for @cubicThou.
  ///
  /// In en, this message translates to:
  /// **'cubic thou'**
  String get cubicThou;

  /// No description provided for @teaspoon.
  ///
  /// In en, this message translates to:
  /// **'teaspoon'**
  String get teaspoon;

  /// No description provided for @tablespoon.
  ///
  /// In en, this message translates to:
  /// **'tablespoon'**
  String get tablespoon;

  /// No description provided for @imperialTeaspoon.
  ///
  /// In en, this message translates to:
  /// **'imperial teaspoon'**
  String get imperialTeaspoon;

  /// No description provided for @imperialTablespoon.
  ///
  /// In en, this message translates to:
  /// **'Imperial tablespoon'**
  String get imperialTablespoon;

  /// No description provided for @imperialFluidOunce.
  ///
  /// In en, this message translates to:
  /// **'Imperial fluid ounce'**
  String get imperialFluidOunce;

  /// No description provided for @imperialCup.
  ///
  /// In en, this message translates to:
  /// **'Imperial cup'**
  String get imperialCup;

  /// No description provided for @imperialPint.
  ///
  /// In en, this message translates to:
  /// **'Imperial pint'**
  String get imperialPint;

  /// No description provided for @imperialQuart.
  ///
  /// In en, this message translates to:
  /// **'Imperial quart'**
  String get imperialQuart;

  /// No description provided for @imperialGallon.
  ///
  /// In en, this message translates to:
  /// **'Imperial gallon'**
  String get imperialGallon;

  /// No description provided for @cubicInch.
  ///
  /// In en, this message translates to:
  /// **'Cubic inch'**
  String get cubicInch;

  /// No description provided for @cubicFoot.
  ///
  /// In en, this message translates to:
  /// **'Cubic foot'**
  String get cubicFoot;

  /// No description provided for @cubicYard.
  ///
  /// In en, this message translates to:
  /// **'Cubic yard'**
  String get cubicYard;

  /// No description provided for @cubicMile.
  ///
  /// In en, this message translates to:
  /// **'Cubic mile'**
  String get cubicMile;

  /// No description provided for @usTeaspoon.
  ///
  /// In en, this message translates to:
  /// **'US teaspoon'**
  String get usTeaspoon;

  /// No description provided for @usTablespoon.
  ///
  /// In en, this message translates to:
  /// **'US tablespoon'**
  String get usTablespoon;

  /// No description provided for @usFluidOunce.
  ///
  /// In en, this message translates to:
  /// **'US fluid ounce'**
  String get usFluidOunce;

  /// No description provided for @usCustomaryCup.
  ///
  /// In en, this message translates to:
  /// **'US customary cup'**
  String get usCustomaryCup;

  /// No description provided for @usLegalCup.
  ///
  /// In en, this message translates to:
  /// **'US legal cup'**
  String get usLegalCup;

  /// No description provided for @usLiquidPint.
  ///
  /// In en, this message translates to:
  /// **'US liquid pint'**
  String get usLiquidPint;

  /// No description provided for @usLiquidQuart.
  ///
  /// In en, this message translates to:
  /// **'US liquid quart'**
  String get usLiquidQuart;

  /// No description provided for @usLiquidGallon.
  ///
  /// In en, this message translates to:
  /// **'US liquid gallon'**
  String get usLiquidGallon;

  /// No description provided for @cubicNanometerSymbol.
  ///
  /// In en, this message translates to:
  /// **'nm³'**
  String get cubicNanometerSymbol;

  /// No description provided for @cubicMicrometerSymbol.
  ///
  /// In en, this message translates to:
  /// **'μm³'**
  String get cubicMicrometerSymbol;

  /// No description provided for @cubicMillimeterSymbol.
  ///
  /// In en, this message translates to:
  /// **'mm³'**
  String get cubicMillimeterSymbol;

  /// No description provided for @deciliterSymbol.
  ///
  /// In en, this message translates to:
  /// **'dL'**
  String get deciliterSymbol;

  /// No description provided for @centiliterSymbol.
  ///
  /// In en, this message translates to:
  /// **'cL'**
  String get centiliterSymbol;

  /// No description provided for @milliliterSymbol.
  ///
  /// In en, this message translates to:
  /// **'mL'**
  String get milliliterSymbol;

  /// No description provided for @literSymbol.
  ///
  /// In en, this message translates to:
  /// **'L'**
  String get literSymbol;

  /// No description provided for @cubicMeterSymbol.
  ///
  /// In en, this message translates to:
  /// **'m³'**
  String get cubicMeterSymbol;

  /// No description provided for @cubicDecameterSymbol.
  ///
  /// In en, this message translates to:
  /// **'dam³'**
  String get cubicDecameterSymbol;

  /// No description provided for @cubicKilometerSymbol.
  ///
  /// In en, this message translates to:
  /// **'km³'**
  String get cubicKilometerSymbol;

  /// No description provided for @cubicMegameterSymbol.
  ///
  /// In en, this message translates to:
  /// **'Mm³'**
  String get cubicMegameterSymbol;

  /// No description provided for @cubicGigameterSymbol.
  ///
  /// In en, this message translates to:
  /// **'Gm³'**
  String get cubicGigameterSymbol;

  /// No description provided for @cubicThouSymbol.
  ///
  /// In en, this message translates to:
  /// **'thou³'**
  String get cubicThouSymbol;

  /// No description provided for @teaspoonSymbol.
  ///
  /// In en, this message translates to:
  /// **'tsp'**
  String get teaspoonSymbol;

  /// No description provided for @tablespoonSymbol.
  ///
  /// In en, this message translates to:
  /// **'Tbsp'**
  String get tablespoonSymbol;

  /// No description provided for @imperialTeaspoonSymbol.
  ///
  /// In en, this message translates to:
  /// **'tsp'**
  String get imperialTeaspoonSymbol;

  /// No description provided for @imperialTablespoonSymbol.
  ///
  /// In en, this message translates to:
  /// **'Tbsp'**
  String get imperialTablespoonSymbol;

  /// No description provided for @imperialFluidOunceSymbol.
  ///
  /// In en, this message translates to:
  /// **'fl oz'**
  String get imperialFluidOunceSymbol;

  /// No description provided for @imperialCupSymbol.
  ///
  /// In en, this message translates to:
  /// **'c'**
  String get imperialCupSymbol;

  /// No description provided for @imperialPintSymbol.
  ///
  /// In en, this message translates to:
  /// **'pt'**
  String get imperialPintSymbol;

  /// No description provided for @imperialQuartSymbol.
  ///
  /// In en, this message translates to:
  /// **'qt'**
  String get imperialQuartSymbol;

  /// No description provided for @imperialGallonSymbol.
  ///
  /// In en, this message translates to:
  /// **'gal'**
  String get imperialGallonSymbol;

  /// No description provided for @cubicInchSymbol.
  ///
  /// In en, this message translates to:
  /// **'in³'**
  String get cubicInchSymbol;

  /// No description provided for @cubicFootSymbol.
  ///
  /// In en, this message translates to:
  /// **'ft³'**
  String get cubicFootSymbol;

  /// No description provided for @cubicYardSymbol.
  ///
  /// In en, this message translates to:
  /// **'yd³'**
  String get cubicYardSymbol;

  /// No description provided for @cubicMileSymbol.
  ///
  /// In en, this message translates to:
  /// **'mi³'**
  String get cubicMileSymbol;

  /// No description provided for @usTeaspoonSymbol.
  ///
  /// In en, this message translates to:
  /// **'tsp'**
  String get usTeaspoonSymbol;

  /// No description provided for @usTablespoonSymbol.
  ///
  /// In en, this message translates to:
  /// **'Tbsp'**
  String get usTablespoonSymbol;

  /// No description provided for @usFluidOunceSymbol.
  ///
  /// In en, this message translates to:
  /// **'fl oz'**
  String get usFluidOunceSymbol;

  /// No description provided for @usCustomaryCupSymbol.
  ///
  /// In en, this message translates to:
  /// **'c'**
  String get usCustomaryCupSymbol;

  /// No description provided for @usLegalCupSymbol.
  ///
  /// In en, this message translates to:
  /// **'c'**
  String get usLegalCupSymbol;

  /// No description provided for @usLiquidPintSymbol.
  ///
  /// In en, this message translates to:
  /// **'pt'**
  String get usLiquidPintSymbol;

  /// No description provided for @usLiquidQuartSymbol.
  ///
  /// In en, this message translates to:
  /// **'qt'**
  String get usLiquidQuartSymbol;

  /// No description provided for @usLiquidGallonSymbol.
  ///
  /// In en, this message translates to:
  /// **'gal'**
  String get usLiquidGallonSymbol;

  /// No description provided for @nanogram.
  ///
  /// In en, this message translates to:
  /// **'nanogram'**
  String get nanogram;

  /// No description provided for @microgram.
  ///
  /// In en, this message translates to:
  /// **'microgram'**
  String get microgram;

  /// No description provided for @milligram.
  ///
  /// In en, this message translates to:
  /// **'milligram'**
  String get milligram;

  /// No description provided for @gram.
  ///
  /// In en, this message translates to:
  /// **'gram'**
  String get gram;

  /// No description provided for @kilogram.
  ///
  /// In en, this message translates to:
  /// **'kilogram'**
  String get kilogram;

  /// No description provided for @tonne.
  ///
  /// In en, this message translates to:
  /// **'tonne'**
  String get tonne;

  /// No description provided for @megatonne.
  ///
  /// In en, this message translates to:
  /// **'megatonne'**
  String get megatonne;

  /// No description provided for @gigatonne.
  ///
  /// In en, this message translates to:
  /// **'gigatonne'**
  String get gigatonne;

  /// No description provided for @ounce.
  ///
  /// In en, this message translates to:
  /// **'ounce'**
  String get ounce;

  /// No description provided for @pound.
  ///
  /// In en, this message translates to:
  /// **'pound'**
  String get pound;

  /// No description provided for @imperialTon.
  ///
  /// In en, this message translates to:
  /// **'ton'**
  String get imperialTon;

  /// No description provided for @usTon.
  ///
  /// In en, this message translates to:
  /// **'ton'**
  String get usTon;

  /// No description provided for @nanogramSymbol.
  ///
  /// In en, this message translates to:
  /// **'ng'**
  String get nanogramSymbol;

  /// No description provided for @microgramSymbol.
  ///
  /// In en, this message translates to:
  /// **'µg'**
  String get microgramSymbol;

  /// No description provided for @milligramSymbol.
  ///
  /// In en, this message translates to:
  /// **'mg'**
  String get milligramSymbol;

  /// No description provided for @gramSymbol.
  ///
  /// In en, this message translates to:
  /// **'g'**
  String get gramSymbol;

  /// No description provided for @kilogramSymbol.
  ///
  /// In en, this message translates to:
  /// **'kg'**
  String get kilogramSymbol;

  /// No description provided for @tonneSymbol.
  ///
  /// In en, this message translates to:
  /// **'t'**
  String get tonneSymbol;

  /// No description provided for @megatonneSymbol.
  ///
  /// In en, this message translates to:
  /// **'Mt'**
  String get megatonneSymbol;

  /// No description provided for @gigatonneSymbol.
  ///
  /// In en, this message translates to:
  /// **'Gt'**
  String get gigatonneSymbol;

  /// No description provided for @ounceSymbol.
  ///
  /// In en, this message translates to:
  /// **'oz'**
  String get ounceSymbol;

  /// No description provided for @poundSymbol.
  ///
  /// In en, this message translates to:
  /// **'lb'**
  String get poundSymbol;

  /// No description provided for @imperialTonSymbol.
  ///
  /// In en, this message translates to:
  /// **'ton'**
  String get imperialTonSymbol;

  /// No description provided for @usTonSymbol.
  ///
  /// In en, this message translates to:
  /// **'ton'**
  String get usTonSymbol;

  /// No description provided for @nanosecond.
  ///
  /// In en, this message translates to:
  /// **'nanosecond'**
  String get nanosecond;

  /// No description provided for @microsecond.
  ///
  /// In en, this message translates to:
  /// **'microsecond'**
  String get microsecond;

  /// No description provided for @millisecond.
  ///
  /// In en, this message translates to:
  /// **'millisecond'**
  String get millisecond;

  /// No description provided for @centisecond.
  ///
  /// In en, this message translates to:
  /// **'centisecond'**
  String get centisecond;

  /// No description provided for @decisecond.
  ///
  /// In en, this message translates to:
  /// **'decisecond'**
  String get decisecond;

  /// No description provided for @second.
  ///
  /// In en, this message translates to:
  /// **'second'**
  String get second;

  /// No description provided for @decasecond.
  ///
  /// In en, this message translates to:
  /// **'decasecond'**
  String get decasecond;

  /// No description provided for @minute.
  ///
  /// In en, this message translates to:
  /// **'minute'**
  String get minute;

  /// No description provided for @hour.
  ///
  /// In en, this message translates to:
  /// **'hour'**
  String get hour;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'day'**
  String get day;

  /// No description provided for @week.
  ///
  /// In en, this message translates to:
  /// **'week'**
  String get week;

  /// No description provided for @fortnight.
  ///
  /// In en, this message translates to:
  /// **'fortnight'**
  String get fortnight;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'month'**
  String get month;

  /// No description provided for @quarter.
  ///
  /// In en, this message translates to:
  /// **'quarter'**
  String get quarter;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'year'**
  String get year;

  /// No description provided for @decade.
  ///
  /// In en, this message translates to:
  /// **'decade'**
  String get decade;

  /// No description provided for @century.
  ///
  /// In en, this message translates to:
  /// **'century'**
  String get century;

  /// No description provided for @nanosecondSymbol.
  ///
  /// In en, this message translates to:
  /// **'ns'**
  String get nanosecondSymbol;

  /// No description provided for @microsecondSymbol.
  ///
  /// In en, this message translates to:
  /// **'μs'**
  String get microsecondSymbol;

  /// No description provided for @millisecondSymbol.
  ///
  /// In en, this message translates to:
  /// **'ms'**
  String get millisecondSymbol;

  /// No description provided for @centisecondSymbol.
  ///
  /// In en, this message translates to:
  /// **'cs'**
  String get centisecondSymbol;

  /// No description provided for @decisecondSymbol.
  ///
  /// In en, this message translates to:
  /// **'ds'**
  String get decisecondSymbol;

  /// No description provided for @secondSymbol.
  ///
  /// In en, this message translates to:
  /// **'s'**
  String get secondSymbol;

  /// No description provided for @decasecondSymbol.
  ///
  /// In en, this message translates to:
  /// **'das'**
  String get decasecondSymbol;

  /// No description provided for @minuteSymbol.
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get minuteSymbol;

  /// No description provided for @hourSymbol.
  ///
  /// In en, this message translates to:
  /// **'hr'**
  String get hourSymbol;

  /// No description provided for @daySymbol.
  ///
  /// In en, this message translates to:
  /// **'d'**
  String get daySymbol;

  /// No description provided for @weekSymbol.
  ///
  /// In en, this message translates to:
  /// **'wk'**
  String get weekSymbol;

  /// No description provided for @fortnightSymbol.
  ///
  /// In en, this message translates to:
  /// **'fn'**
  String get fortnightSymbol;

  /// No description provided for @monthSymbol.
  ///
  /// In en, this message translates to:
  /// **'mo'**
  String get monthSymbol;

  /// No description provided for @quarterSymbol.
  ///
  /// In en, this message translates to:
  /// **'qr'**
  String get quarterSymbol;

  /// No description provided for @yearSymbol.
  ///
  /// In en, this message translates to:
  /// **'yr'**
  String get yearSymbol;

  /// No description provided for @decadeSymbol.
  ///
  /// In en, this message translates to:
  /// **'dec'**
  String get decadeSymbol;

  /// No description provided for @centurySymbol.
  ///
  /// In en, this message translates to:
  /// **'c'**
  String get centurySymbol;

  /// No description provided for @nanokelvin.
  ///
  /// In en, this message translates to:
  /// **'nanokelvin'**
  String get nanokelvin;

  /// No description provided for @microkelvin.
  ///
  /// In en, this message translates to:
  /// **'microkelvin'**
  String get microkelvin;

  /// No description provided for @millikelvin.
  ///
  /// In en, this message translates to:
  /// **'millikelvin'**
  String get millikelvin;

  /// No description provided for @centikelvin.
  ///
  /// In en, this message translates to:
  /// **'centikelvin'**
  String get centikelvin;

  /// No description provided for @decikelvin.
  ///
  /// In en, this message translates to:
  /// **'decikelvin'**
  String get decikelvin;

  /// No description provided for @kelvin.
  ///
  /// In en, this message translates to:
  /// **'kelvin'**
  String get kelvin;

  /// No description provided for @celsius.
  ///
  /// In en, this message translates to:
  /// **'Celsius'**
  String get celsius;

  /// No description provided for @fahrenheit.
  ///
  /// In en, this message translates to:
  /// **'Fahrenheit'**
  String get fahrenheit;

  /// No description provided for @nanokelvinSymbol.
  ///
  /// In en, this message translates to:
  /// **'nK'**
  String get nanokelvinSymbol;

  /// No description provided for @microkelvinSymbol.
  ///
  /// In en, this message translates to:
  /// **'μK'**
  String get microkelvinSymbol;

  /// No description provided for @millikelvinSymbol.
  ///
  /// In en, this message translates to:
  /// **'mK'**
  String get millikelvinSymbol;

  /// No description provided for @centikelvinSymbol.
  ///
  /// In en, this message translates to:
  /// **'cK'**
  String get centikelvinSymbol;

  /// No description provided for @decikelvinSymbol.
  ///
  /// In en, this message translates to:
  /// **'dK'**
  String get decikelvinSymbol;

  /// No description provided for @kelvinSymbol.
  ///
  /// In en, this message translates to:
  /// **'K'**
  String get kelvinSymbol;

  /// No description provided for @celsiusSymbol.
  ///
  /// In en, this message translates to:
  /// **'°C'**
  String get celsiusSymbol;

  /// No description provided for @fahrenheitSymbol.
  ///
  /// In en, this message translates to:
  /// **'°F'**
  String get fahrenheitSymbol;

  /// No description provided for @thousand.
  ///
  /// In en, this message translates to:
  /// **'thousand'**
  String get thousand;

  /// No description provided for @million.
  ///
  /// In en, this message translates to:
  /// **'million'**
  String get million;

  /// No description provided for @billion.
  ///
  /// In en, this message translates to:
  /// **'billion'**
  String get billion;

  /// No description provided for @trillion.
  ///
  /// In en, this message translates to:
  /// **'trillion'**
  String get trillion;

  /// No description provided for @thousandSymbol.
  ///
  /// In en, this message translates to:
  /// **'K'**
  String get thousandSymbol;

  /// No description provided for @millionSymbol.
  ///
  /// In en, this message translates to:
  /// **'M'**
  String get millionSymbol;

  /// No description provided for @billionSymbol.
  ///
  /// In en, this message translates to:
  /// **'B'**
  String get billionSymbol;

  /// No description provided for @trillionSymbol.
  ///
  /// In en, this message translates to:
  /// **'T'**
  String get trillionSymbol;

  /// No description provided for @nanometer.
  ///
  /// In en, this message translates to:
  /// **'nanometer'**
  String get nanometer;

  /// No description provided for @micrometer.
  ///
  /// In en, this message translates to:
  /// **'micrometer'**
  String get micrometer;

  /// No description provided for @millimeter.
  ///
  /// In en, this message translates to:
  /// **'millimeter'**
  String get millimeter;

  /// No description provided for @centimeter.
  ///
  /// In en, this message translates to:
  /// **'centimeter'**
  String get centimeter;

  /// No description provided for @decimeter.
  ///
  /// In en, this message translates to:
  /// **'decimeter'**
  String get decimeter;

  /// No description provided for @meter.
  ///
  /// In en, this message translates to:
  /// **'meter'**
  String get meter;

  /// No description provided for @decameter.
  ///
  /// In en, this message translates to:
  /// **'decameter'**
  String get decameter;

  /// No description provided for @hectometer.
  ///
  /// In en, this message translates to:
  /// **'hectometer'**
  String get hectometer;

  /// No description provided for @kilometer.
  ///
  /// In en, this message translates to:
  /// **'kilometer'**
  String get kilometer;

  /// No description provided for @megameter.
  ///
  /// In en, this message translates to:
  /// **'megameter'**
  String get megameter;

  /// No description provided for @gigameter.
  ///
  /// In en, this message translates to:
  /// **'gigameter'**
  String get gigameter;

  /// No description provided for @thou.
  ///
  /// In en, this message translates to:
  /// **'thou'**
  String get thou;

  /// No description provided for @inch.
  ///
  /// In en, this message translates to:
  /// **'inch'**
  String get inch;

  /// No description provided for @foot.
  ///
  /// In en, this message translates to:
  /// **'foot'**
  String get foot;

  /// No description provided for @yard.
  ///
  /// In en, this message translates to:
  /// **'yard'**
  String get yard;

  /// No description provided for @mile.
  ///
  /// In en, this message translates to:
  /// **'mile'**
  String get mile;

  /// No description provided for @nanometerSymbol.
  ///
  /// In en, this message translates to:
  /// **'nm'**
  String get nanometerSymbol;

  /// No description provided for @micrometerSymbol.
  ///
  /// In en, this message translates to:
  /// **'μm'**
  String get micrometerSymbol;

  /// No description provided for @millimeterSymbol.
  ///
  /// In en, this message translates to:
  /// **'mm'**
  String get millimeterSymbol;

  /// No description provided for @centimeterSymbol.
  ///
  /// In en, this message translates to:
  /// **'cm'**
  String get centimeterSymbol;

  /// No description provided for @decimeterSymbol.
  ///
  /// In en, this message translates to:
  /// **'dm'**
  String get decimeterSymbol;

  /// No description provided for @meterSymbol.
  ///
  /// In en, this message translates to:
  /// **'m'**
  String get meterSymbol;

  /// No description provided for @decameterSymbol.
  ///
  /// In en, this message translates to:
  /// **'dam'**
  String get decameterSymbol;

  /// No description provided for @hectometerSymbol.
  ///
  /// In en, this message translates to:
  /// **'hm'**
  String get hectometerSymbol;

  /// No description provided for @kilometerSymbol.
  ///
  /// In en, this message translates to:
  /// **'km'**
  String get kilometerSymbol;

  /// No description provided for @megameterSymbol.
  ///
  /// In en, this message translates to:
  /// **'Mm'**
  String get megameterSymbol;

  /// No description provided for @gigameterSymbol.
  ///
  /// In en, this message translates to:
  /// **'Gm'**
  String get gigameterSymbol;

  /// No description provided for @thouSymbol.
  ///
  /// In en, this message translates to:
  /// **'thou'**
  String get thouSymbol;

  /// No description provided for @inchSymbol.
  ///
  /// In en, this message translates to:
  /// **'in'**
  String get inchSymbol;

  /// No description provided for @footSymbol.
  ///
  /// In en, this message translates to:
  /// **'ft'**
  String get footSymbol;

  /// No description provided for @yardSymbol.
  ///
  /// In en, this message translates to:
  /// **'yd'**
  String get yardSymbol;

  /// No description provided for @mileSymbol.
  ///
  /// In en, this message translates to:
  /// **'mi'**
  String get mileSymbol;

  /// No description provided for @bit.
  ///
  /// In en, this message translates to:
  /// **'bit'**
  String get bit;

  /// No description provided for @crumb.
  ///
  /// In en, this message translates to:
  /// **'crumb'**
  String get crumb;

  /// No description provided for @nibble.
  ///
  /// In en, this message translates to:
  /// **'nibble'**
  String get nibble;

  /// No description provided for @kilobit.
  ///
  /// In en, this message translates to:
  /// **'kilobit'**
  String get kilobit;

  /// No description provided for @megabit.
  ///
  /// In en, this message translates to:
  /// **'megabit'**
  String get megabit;

  /// No description provided for @gigabit.
  ///
  /// In en, this message translates to:
  /// **'gigabit'**
  String get gigabit;

  /// No description provided for @terabit.
  ///
  /// In en, this message translates to:
  /// **'terabit'**
  String get terabit;

  /// No description provided for @petabit.
  ///
  /// In en, this message translates to:
  /// **'petabit'**
  String get petabit;

  /// No description provided for @exabit.
  ///
  /// In en, this message translates to:
  /// **'exabit'**
  String get exabit;

  /// No description provided for @zettabit.
  ///
  /// In en, this message translates to:
  /// **'zettabit'**
  String get zettabit;

  /// No description provided for @yottabit.
  ///
  /// In en, this message translates to:
  /// **'yottabit'**
  String get yottabit;

  /// No description provided for @byte.
  ///
  /// In en, this message translates to:
  /// **'byte'**
  String get byte;

  /// No description provided for @kilobyte.
  ///
  /// In en, this message translates to:
  /// **'kilobyte'**
  String get kilobyte;

  /// No description provided for @megabyte.
  ///
  /// In en, this message translates to:
  /// **'megabyte'**
  String get megabyte;

  /// No description provided for @gigabyte.
  ///
  /// In en, this message translates to:
  /// **'gigabyte'**
  String get gigabyte;

  /// No description provided for @terabyte.
  ///
  /// In en, this message translates to:
  /// **'terabyte'**
  String get terabyte;

  /// No description provided for @petabyte.
  ///
  /// In en, this message translates to:
  /// **'petabyte'**
  String get petabyte;

  /// No description provided for @exabyte.
  ///
  /// In en, this message translates to:
  /// **'exabyte'**
  String get exabyte;

  /// No description provided for @zettabyte.
  ///
  /// In en, this message translates to:
  /// **'zettabyte'**
  String get zettabyte;

  /// No description provided for @yottabyte.
  ///
  /// In en, this message translates to:
  /// **'yottabyte'**
  String get yottabyte;

  /// No description provided for @kibibit.
  ///
  /// In en, this message translates to:
  /// **'kibibit'**
  String get kibibit;

  /// No description provided for @mebibit.
  ///
  /// In en, this message translates to:
  /// **'mebibit'**
  String get mebibit;

  /// No description provided for @gibibit.
  ///
  /// In en, this message translates to:
  /// **'gibibit'**
  String get gibibit;

  /// No description provided for @tebibit.
  ///
  /// In en, this message translates to:
  /// **'tebibit'**
  String get tebibit;

  /// No description provided for @pebibit.
  ///
  /// In en, this message translates to:
  /// **'pebibit'**
  String get pebibit;

  /// No description provided for @exbibit.
  ///
  /// In en, this message translates to:
  /// **'exbibit'**
  String get exbibit;

  /// No description provided for @zebibit.
  ///
  /// In en, this message translates to:
  /// **'zebibit'**
  String get zebibit;

  /// No description provided for @yobibit.
  ///
  /// In en, this message translates to:
  /// **'yobibit'**
  String get yobibit;

  /// No description provided for @kibibyte.
  ///
  /// In en, this message translates to:
  /// **'kibibyte'**
  String get kibibyte;

  /// No description provided for @mebibyte.
  ///
  /// In en, this message translates to:
  /// **'mebibyte'**
  String get mebibyte;

  /// No description provided for @gibibyte.
  ///
  /// In en, this message translates to:
  /// **'gibibyte'**
  String get gibibyte;

  /// No description provided for @tebibyte.
  ///
  /// In en, this message translates to:
  /// **'tebibyte'**
  String get tebibyte;

  /// No description provided for @pebibyte.
  ///
  /// In en, this message translates to:
  /// **'pebibyte'**
  String get pebibyte;

  /// No description provided for @exbibyte.
  ///
  /// In en, this message translates to:
  /// **'exbibyte'**
  String get exbibyte;

  /// No description provided for @zebibyte.
  ///
  /// In en, this message translates to:
  /// **'zebibyte'**
  String get zebibyte;

  /// No description provided for @yobibyte.
  ///
  /// In en, this message translates to:
  /// **'yobibyte'**
  String get yobibyte;

  /// No description provided for @squareNanometer.
  ///
  /// In en, this message translates to:
  /// **'square nanometer'**
  String get squareNanometer;

  /// No description provided for @squareMicrometer.
  ///
  /// In en, this message translates to:
  /// **'square micrometer'**
  String get squareMicrometer;

  /// No description provided for @squareMillimeter.
  ///
  /// In en, this message translates to:
  /// **'square millimeter'**
  String get squareMillimeter;

  /// No description provided for @squareCentimeter.
  ///
  /// In en, this message translates to:
  /// **'square centimeter'**
  String get squareCentimeter;

  /// No description provided for @squareDecimeter.
  ///
  /// In en, this message translates to:
  /// **'square decimeter'**
  String get squareDecimeter;

  /// No description provided for @squareMeter.
  ///
  /// In en, this message translates to:
  /// **'square meter'**
  String get squareMeter;

  /// No description provided for @squareDecameter.
  ///
  /// In en, this message translates to:
  /// **'square decameter'**
  String get squareDecameter;

  /// No description provided for @hectare.
  ///
  /// In en, this message translates to:
  /// **'hectare'**
  String get hectare;

  /// No description provided for @squareKilometer.
  ///
  /// In en, this message translates to:
  /// **'square kilometer'**
  String get squareKilometer;

  /// No description provided for @squareMegameter.
  ///
  /// In en, this message translates to:
  /// **'square megameter'**
  String get squareMegameter;

  /// No description provided for @squareGigameter.
  ///
  /// In en, this message translates to:
  /// **'square gigameter'**
  String get squareGigameter;

  /// No description provided for @squareThou.
  ///
  /// In en, this message translates to:
  /// **'square thou'**
  String get squareThou;

  /// No description provided for @squareInch.
  ///
  /// In en, this message translates to:
  /// **'square inch'**
  String get squareInch;

  /// No description provided for @squareFoot.
  ///
  /// In en, this message translates to:
  /// **'square foot'**
  String get squareFoot;

  /// No description provided for @squareYard.
  ///
  /// In en, this message translates to:
  /// **'square yard'**
  String get squareYard;

  /// No description provided for @acre.
  ///
  /// In en, this message translates to:
  /// **'acre'**
  String get acre;

  /// No description provided for @squareMile.
  ///
  /// In en, this message translates to:
  /// **'square mile'**
  String get squareMile;

  /// No description provided for @squareNanometerSymbol.
  ///
  /// In en, this message translates to:
  /// **'nm²'**
  String get squareNanometerSymbol;

  /// No description provided for @squareMicrometerSymbol.
  ///
  /// In en, this message translates to:
  /// **'μm²'**
  String get squareMicrometerSymbol;

  /// No description provided for @squareMillimeterSymbol.
  ///
  /// In en, this message translates to:
  /// **'mm²'**
  String get squareMillimeterSymbol;

  /// No description provided for @squareCentimeterSymbol.
  ///
  /// In en, this message translates to:
  /// **'cm²'**
  String get squareCentimeterSymbol;

  /// No description provided for @squareDecimeterSymbol.
  ///
  /// In en, this message translates to:
  /// **'dm²'**
  String get squareDecimeterSymbol;

  /// No description provided for @squareMeterSymbol.
  ///
  /// In en, this message translates to:
  /// **'m²'**
  String get squareMeterSymbol;

  /// No description provided for @squareDecameterSymbol.
  ///
  /// In en, this message translates to:
  /// **'dam²'**
  String get squareDecameterSymbol;

  /// No description provided for @hectareSymbol.
  ///
  /// In en, this message translates to:
  /// **'ha'**
  String get hectareSymbol;

  /// No description provided for @squareKilometerSymbol.
  ///
  /// In en, this message translates to:
  /// **'km²'**
  String get squareKilometerSymbol;

  /// No description provided for @squareMegameterSymbol.
  ///
  /// In en, this message translates to:
  /// **'Mm²'**
  String get squareMegameterSymbol;

  /// No description provided for @squareGigameterSymbol.
  ///
  /// In en, this message translates to:
  /// **'Gm²'**
  String get squareGigameterSymbol;

  /// No description provided for @squareThouSymbol.
  ///
  /// In en, this message translates to:
  /// **'thou²'**
  String get squareThouSymbol;

  /// No description provided for @squareInchSymbol.
  ///
  /// In en, this message translates to:
  /// **'in²'**
  String get squareInchSymbol;

  /// No description provided for @squareFootSymbol.
  ///
  /// In en, this message translates to:
  /// **'ft²'**
  String get squareFootSymbol;

  /// No description provided for @squareYardSymbol.
  ///
  /// In en, this message translates to:
  /// **'yd²'**
  String get squareYardSymbol;

  /// No description provided for @acreSymbol.
  ///
  /// In en, this message translates to:
  /// **'ac'**
  String get acreSymbol;

  /// No description provided for @squareMileSymbol.
  ///
  /// In en, this message translates to:
  /// **'mi²'**
  String get squareMileSymbol;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'nb'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'nb': return AppLocalizationsNb();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
