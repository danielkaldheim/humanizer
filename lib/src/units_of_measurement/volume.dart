import 'package:flutter/material.dart';
import 'package:humanizer/humanizer.dart';
import 'package:humanizer/l10n/humanizer_localizations.dart';
import 'package:humanizer/src/units_of_measurement/rationals.dart';
import 'package:humanizer/src/units_of_measurement/volume_constants.dart';

/// A unit of measurement representing a three-dimensional volume.
class Volume extends UnitOfMeasurement<VolumeUnit, Volume> {
  /// Creates a [Volume] given a [unit] and rational [value] for that unit.
  Volume.fromUnits(VolumeUnit unit, Rational value)
      : super.fromUnits(unit, value);

  /// Creates a [Volume] representing the specified number of [cubicNanometers].
  factory Volume.fromCubicNanometers(Rational cubicNanometers) =>
      Volume.fromUnits(VolumeUnit.cubicNanometer, cubicNanometers);

  /// Creates a [Volume] representing the specified number of [cubicThous].
  factory Volume.fromCubicThous(Rational cubicThous) =>
      Volume.fromUnits(VolumeUnit.cubicThou, cubicThous);

  /// Creates a [Volume] representing the specified number of [cubicMicrometers].
  factory Volume.fromCubicMicrometers(Rational cubicMicrometers) =>
      Volume.fromUnits(VolumeUnit.cubicMicrometer, cubicMicrometers);

  /// Creates a [Volume] representing the specified number of [cubicMillimeters].
  factory Volume.fromCubicMillimeters(Rational cubicMillimeters) =>
      Volume.fromUnits(VolumeUnit.cubicMillimeter, cubicMillimeters);

  /// Creates a [Volume] representing the specified number of [centiliters].
  factory Volume.fromCentiliters(Rational centiliters) =>
      Volume.fromUnits(VolumeUnit.centiliter, centiliters);

  /// Creates a [Volume] representing the specified number of [deciliters].
  factory Volume.fromDeciliters(Rational deciliters) =>
      Volume.fromUnits(VolumeUnit.deciliter, deciliters);

  /// Creates a [Volume] representing the specified number of [milliliters].
  factory Volume.fromMilliliters(Rational milliliters) =>
      Volume.fromUnits(VolumeUnit.milliliter, milliliters);

  /// Creates a [Volume] representing the specified number of [tablespoons].
  factory Volume.fromTablespoons(Rational tablespoons) =>
      Volume.fromUnits(VolumeUnit.tablespoon, tablespoons);

  /// Creates a [Volume] representing the specified number of [teaspoons].
  factory Volume.fromTeaspoons(Rational teaspoons) =>
      Volume.fromUnits(VolumeUnit.teaspoon, teaspoons);

  /// Creates a [Volume] representing the specified number of [imperialTeaspoons].
  factory Volume.fromImperialTeaspoons(Rational imperialTeaspoons) =>
      Volume.fromUnits(VolumeUnit.imperialTeaspoon, imperialTeaspoons);

  /// Creates a [Volume] representing the specified number of [usTeaspoons].
  factory Volume.fromUsTeaspoons(Rational usTeaspoons) =>
      Volume.fromUnits(VolumeUnit.usTeaspoon, usTeaspoons);

  /// Creates a [Volume] representing the specified number of [usLegalCups].
  factory Volume.fromUsLegalCups(Rational usLegalCups) =>
      Volume.fromUnits(VolumeUnit.usLegalCup, usLegalCups);

  /// Creates a [Volume] representing the specified number of [usFluidOunces].
  factory Volume.fromUsFluidOunces(Rational usFluidOunces) =>
      Volume.fromUnits(VolumeUnit.usFluidOunce, usFluidOunces);

  /// Creates a [Volume] representing the specified number of [imperialFluidOunces].
  factory Volume.fromImperialFluidOunces(Rational imperialFluidOunces) =>
      Volume.fromUnits(VolumeUnit.imperialFluidOunce, imperialFluidOunces);

  /// Creates a [Volume] representing the specified number of [imperialTablespoons].
  factory Volume.fromImperialTablespoons(Rational imperialTablespoons) =>
      Volume.fromUnits(VolumeUnit.imperialTablespoon, imperialTablespoons);

  /// Creates a [Volume] representing the specified number of [cubicInches].
  factory Volume.fromCubicInches(Rational cubicInches) =>
      Volume.fromUnits(VolumeUnit.cubicInch, cubicInches);

  /// Creates a [Volume] representing the specified number of [usTablespoons].
  factory Volume.fromUsTablespoons(Rational usTablespoons) =>
      Volume.fromUnits(VolumeUnit.usTablespoon, usTablespoons);

  /// Creates a [Volume] representing the specified number of [liters].
  factory Volume.fromLiters(Rational liters) =>
      Volume.fromUnits(VolumeUnit.liter, liters);

  /// Creates a [Volume] representing the specified number of [usLiquidQuarts].
  factory Volume.fromUsLiquidQuarts(Rational usLiquidQuarts) =>
      Volume.fromUnits(VolumeUnit.usLiquidQuart, usLiquidQuarts);

  /// Creates a [Volume] representing the specified number of [usCustomaryCups].
  factory Volume.fromUsCustomaryCups(Rational usCustomaryCups) =>
      Volume.fromUnits(VolumeUnit.usCustomaryCup, usCustomaryCups);

  /// Creates a [Volume] representing the specified number of [imperialPints].
  factory Volume.fromImperialPints(Rational imperialPints) =>
      Volume.fromUnits(VolumeUnit.imperialPint, imperialPints);

  /// Creates a [Volume] representing the specified number of [usLiquidPints].
  factory Volume.fromUsLiquidPints(Rational usLiquidPints) =>
      Volume.fromUnits(VolumeUnit.usLiquidPint, usLiquidPints);

  /// Creates a [Volume] representing the specified number of [imperialCups].
  factory Volume.fromImperialCups(Rational imperialCups) =>
      Volume.fromUnits(VolumeUnit.imperialCup, imperialCups);

  /// Creates a [Volume] representing the specified number of [imperialGallons].
  factory Volume.fromImperialGallons(Rational imperialGallons) =>
      Volume.fromUnits(VolumeUnit.imperialGallon, imperialGallons);

  /// Creates a [Volume] representing the specified number of [usLiquidGallons].
  factory Volume.fromUsLiquidGallons(Rational usLiquidGallons) =>
      Volume.fromUnits(VolumeUnit.usLiquidGallon, usLiquidGallons);

  /// Creates a [Volume] representing the specified number of [imperialQuarts].
  factory Volume.fromImperialQuarts(Rational imperialQuarts) =>
      Volume.fromUnits(VolumeUnit.imperialQuart, imperialQuarts);

  /// Creates a [Volume] representing the specified number of [cubicFeet].
  factory Volume.fromCubicFeet(Rational cubicFeet) =>
      Volume.fromUnits(VolumeUnit.cubicFoot, cubicFeet);

  /// Creates a [Volume] representing the specified number of [cubicMeters].
  factory Volume.fromCubicMeters(Rational cubicMeters) =>
      Volume.fromUnits(VolumeUnit.cubicMeter, cubicMeters);

  /// Creates a [Volume] representing the specified number of [cubicYards].
  factory Volume.fromCubicYards(Rational cubicYards) =>
      Volume.fromUnits(VolumeUnit.cubicYard, cubicYards);

  /// Creates a [Volume] representing the specified number of [cubicDecameters].
  factory Volume.fromCubicDecameters(Rational cubicDecameters) =>
      Volume.fromUnits(VolumeUnit.cubicDecameter, cubicDecameters);

  /// Creates a [Volume] representing the specified number of [cubicKilometers].
  factory Volume.fromCubicKilometers(Rational cubicKilometers) =>
      Volume.fromUnits(VolumeUnit.cubicKilometer, cubicKilometers);

  /// Creates a [Volume] representing the specified number of [cubicMiles].
  factory Volume.fromCubicMiles(Rational cubicMiles) =>
      Volume.fromUnits(VolumeUnit.cubicMile, cubicMiles);

  /// Creates a [Volume] representing the specified number of [cubicMegameters].
  factory Volume.fromCubicMegameters(Rational cubicMegameters) =>
      Volume.fromUnits(VolumeUnit.cubicMegameter, cubicMegameters);

  /// Creates a [Volume] representing the specified number of [cubicGigameters].
  factory Volume.fromCubicGigameters(Rational cubicGigameters) =>
      Volume.fromUnits(VolumeUnit.cubicGigameter, cubicGigameters);

  /// A [Volume] of size zero.
  static final zero = Volume.fromCubicNanometers(Rationals.zero);

  static final _defaultFormat = VolumeFormat();

  /// Gets the number of cubic nanometers in this [Volume], including any fractional portion.
  Rational get cubicNanometers => getUnits(VolumeUnit.cubicNanometer);

  /// Gets the number of cubic thous in this [Volume], including any fractional portion.
  Rational get cubicThous => getUnits(VolumeUnit.cubicThou);

  /// Gets the number of cubic micrometers in this [Volume], including any fractional portion.
  Rational get cubicMicrometers => getUnits(VolumeUnit.cubicMicrometer);

  /// Gets the number of cubic millimeters in this [Volume], including any fractional portion.
  Rational get cubicMillimeters => getUnits(VolumeUnit.cubicMillimeter);

  /// Gets the number of deciliters in this [Volume], including any fractional portion.
  Rational get deciliters => getUnits(VolumeUnit.deciliter);

  /// Gets the number of centiliters in this [Volume], including any fractional portion.
  Rational get centiliters => getUnits(VolumeUnit.centiliter);

  /// Gets the number of milliliters in this [Volume], including any fractional portion.
  Rational get milliliters => getUnits(VolumeUnit.milliliter);

  /// Gets the number of milliliters in this [Volume], including any fractional portion.
  Rational get tablespoons => getUnits(VolumeUnit.tablespoon);

  /// Gets the number of milliliters in this [Volume], including any fractional portion.
  Rational get teaspoons => getUnits(VolumeUnit.teaspoon);

  /// Gets the number of imperial teaspoons in this [Volume], including any fractional portion.
  Rational get imperialTeaspoons => getUnits(VolumeUnit.imperialTeaspoon);

  /// Gets the number of US teaspoons in this [Volume], including any fractional portion.
  Rational get usTeaspoons => getUnits(VolumeUnit.usTeaspoon);

  /// Gets the number of US legal cups in this [Volume], including any fractional portion.
  Rational get usLegalCups => getUnits(VolumeUnit.usLegalCup);

  /// Gets the number of US fluid ounces in this [Volume], including any fractional portion.
  Rational get usFluidOunces => getUnits(VolumeUnit.usFluidOunce);

  /// Gets the number of imperial fluid ounces in this [Volume], including any fractional portion.
  Rational get imperialFluidOunces => getUnits(VolumeUnit.imperialFluidOunce);

  /// Gets the number of imperial tablespoons in this [Volume], including any fractional portion.
  Rational get imperialTablespoons => getUnits(VolumeUnit.imperialTablespoon);

  /// Gets the number of cubic inches in this [Volume], including any fractional portion.
  Rational get cubicInches => getUnits(VolumeUnit.cubicInch);

  /// Gets the number of US tablespoons in this [Volume], including any fractional portion.
  Rational get usTablespoons => getUnits(VolumeUnit.usTablespoon);

  /// Gets the number of liters in this [Volume], including any fractional portion.
  Rational get liters => getUnits(VolumeUnit.liter);

  /// Gets the number of US liquid quarts in this [Volume], including any fractional portion.
  Rational get usLiquidQuarts => getUnits(VolumeUnit.usLiquidQuart);

  /// Gets the number of US customary cups in this [Volume], including any fractional portion.
  Rational get usCustomaryCups => getUnits(VolumeUnit.usCustomaryCup);

  /// Gets the number of imperial pints in this [Volume], including any fractional portion.
  Rational get imperialPints => getUnits(VolumeUnit.imperialPint);

  /// Gets the number of US liquid pints in this [Volume], including any fractional portion.
  Rational get usLiquidPints => getUnits(VolumeUnit.usLiquidPint);

  /// Gets the number of imperial cups in this [Volume], including any fractional portion.
  Rational get imperialCups => getUnits(VolumeUnit.imperialCup);

  /// Gets the number of imperial gallons in this [Volume], including any fractional portion.
  Rational get imperialGallons => getUnits(VolumeUnit.imperialGallon);

  /// Gets the number of US liquid gallons in this [Volume], including any fractional portion.
  Rational get usLiquidGallons => getUnits(VolumeUnit.usLiquidGallon);

  /// Gets the number of imperial quarts in this [Volume], including any fractional portion.
  Rational get imperialQuarts => getUnits(VolumeUnit.imperialQuart);

  /// Gets the number of cubic feet in this [Volume], including any fractional portion.
  Rational get cubicFeet => getUnits(VolumeUnit.cubicFoot);

  /// Gets the number of cubic meters in this [Volume], including any fractional portion.
  Rational get cubicMeters => getUnits(VolumeUnit.cubicMeter);

  /// Gets the number of cubic yards in this [Volume], including any fractional portion.
  Rational get cubicYards => getUnits(VolumeUnit.cubicYard);

  /// Gets the number of cubic decameters in this [Volume], including any fractional portion.
  Rational get cubicDecameters => getUnits(VolumeUnit.cubicDecameter);

  /// Gets the number of cubic kilometers in this [Volume], including any fractional portion.
  Rational get cubicKilometers => getUnits(VolumeUnit.cubicKilometer);

  /// Gets the number of cubic miles in this [Volume], including any fractional portion.
  Rational get cubicMiles => getUnits(VolumeUnit.cubicMile);

  /// Gets the number of cubic megameters in this [Volume], including any fractional portion.
  Rational get cubicMegameters => getUnits(VolumeUnit.cubicMegameter);

  /// Gets the number of cubic gigameters in this [Volume], including any fractional portion.
  Rational get cubicGigameters => getUnits(VolumeUnit.cubicGigameter);

  /// Creates a [VolumeRate] with the specified [period] from this value.
  VolumeRate per(Duration period) => VolumeRate._(
        value: this,
        period: period,
      );

  @override
  Rational getUnits(VolumeUnit unit) => baseValue / unit._cubicMeterCount;

  @override
  String toString() => _defaultFormat.format(this);

  @override
  @protected
  Volume createValue(Rational baseValue) => Volume.fromCubicMeters(baseValue);

  @override
  @protected
  Rational getBaseValue(VolumeUnit unit, Rational value) =>
      value * unit._cubicMeterCount;
}

/// Defines supported units of volume.
enum VolumeUnit {
  /// A unit representing cubic nanometers.
  cubicNanometer,

  /// A unit representing cubic thous.
  cubicThou,

  /// A unit representing cubic micrometers.
  cubicMicrometer,

  /// A unit representing cubic millimeters.
  cubicMillimeter,

  /// A unit representing deciliters.
  deciliter,

  /// A unit representing centiliters.
  centiliter,

  /// A unit representing milliliters, which is the common name for cubic centimeters.
  milliliter,

  /// A unit representing metric teaspoon
  teaspoon,

  /// A unit representing metric tablespoon
  tablespoon,

  /// A unit representing imperial teaspoons.
  imperialTeaspoon,

  /// A unit representing US teaspoons.
  usTeaspoon,

  /// A unit representing US legal cups.
  usLegalCup,

  /// A unit representing US fluid ounces.
  usFluidOunce,

  /// A unit representing imperial fluid ounces.
  imperialFluidOunce,

  /// A unit representing imperial tablespoons.
  imperialTablespoon,

  /// A unit representing cubic inches.
  cubicInch,

  /// A unit representing US tablespoons.
  usTablespoon,

  /// A unit representing liters, which is the common name for cubic decimeters.
  liter,

  /// A unit representing US liquid quarts.
  usLiquidQuart,

  /// A unit representing US customary cups.
  usCustomaryCup,

  /// A unit representing imperial pints.
  imperialPint,

  /// A unit representing US liquid pints.
  usLiquidPint,

  /// A unit representing imperial cups.
  imperialCup,

  /// A unit representing imperial gallons.
  imperialGallon,

  /// A unit representing US liquid gallons.
  usLiquidGallon,

  /// A unit representing imperial quarts.
  imperialQuart,

  /// A unit representing cubic feet.
  cubicFoot,

  /// A unit representing cubic meters.
  cubicMeter,

  /// A unit representing cubic yards.
  cubicYard,

  /// A unit representing cubic decameters.
  cubicDecameter,

  /// A unit representing cubic kilometers.
  cubicKilometer,

  /// A unit representing cubic miles.
  cubicMile,

  /// A unit representing cubic megameters.
  cubicMegameter,

  /// A unit representing cubic gigameters.
  cubicGigameter,
}

/// Provides convenience sets of commonly used [VolumeUnit]s.
class VolumeUnits {
  /// Contains all defined [VolumeUnit]s.
  static const all = <VolumeUnit>{
    // SI.
    VolumeUnit.cubicNanometer,
    VolumeUnit.cubicMicrometer,
    VolumeUnit.cubicMillimeter,
    VolumeUnit.deciliter,
    VolumeUnit.centiliter,
    VolumeUnit.milliliter,
    VolumeUnit.liter,
    VolumeUnit.cubicMeter,
    VolumeUnit.cubicDecameter,
    VolumeUnit.cubicKilometer,
    VolumeUnit.cubicMegameter,
    VolumeUnit.cubicGigameter,
    VolumeUnit.teaspoon,
    VolumeUnit.tablespoon,

    // Imperial.
    VolumeUnit.cubicThou,
    VolumeUnit.imperialTeaspoon,
    VolumeUnit.imperialTablespoon,
    VolumeUnit.imperialFluidOunce,
    VolumeUnit.imperialCup,
    VolumeUnit.imperialPint,
    VolumeUnit.imperialQuart,
    VolumeUnit.imperialGallon,
    VolumeUnit.cubicInch,
    VolumeUnit.cubicFoot,
    VolumeUnit.cubicYard,
    VolumeUnit.cubicMile,

    // US.
    VolumeUnit.usTeaspoon,
    VolumeUnit.usTablespoon,
    VolumeUnit.usFluidOunce,
    VolumeUnit.usCustomaryCup,
    VolumeUnit.usLegalCup,
    VolumeUnit.usLiquidPint,
    VolumeUnit.usLiquidQuart,
    VolumeUnit.usLiquidGallon,
  };

  /// Contains International System of Units (SI) [VolumeUnit]s.
  static const si = <VolumeUnit>{
    VolumeUnit.cubicNanometer,
    VolumeUnit.cubicMicrometer,
    VolumeUnit.cubicMillimeter,
    VolumeUnit.milliliter,
    VolumeUnit.centiliter,
    VolumeUnit.deciliter,
    VolumeUnit.liter,
    VolumeUnit.cubicMeter,
    VolumeUnit.cubicDecameter,
    VolumeUnit.cubicKilometer,
    VolumeUnit.cubicMegameter,
    VolumeUnit.cubicGigameter,
    VolumeUnit.teaspoon,
    VolumeUnit.tablespoon,
  };

  /// Contains imperial [VolumeUnit]s.
  static const imperial = <VolumeUnit>{
    VolumeUnit.cubicThou,
    VolumeUnit.cubicInch,
    VolumeUnit.cubicFoot,
    VolumeUnit.cubicYard,
    VolumeUnit.cubicMile,
    VolumeUnit.imperialTeaspoon,
    VolumeUnit.imperialFluidOunce,
    VolumeUnit.imperialTablespoon,
    VolumeUnit.imperialCup,
    VolumeUnit.imperialPint,
    VolumeUnit.imperialQuart,
    VolumeUnit.imperialGallon,
  };

  /// Contains US-only [VolumeUnit]s.
  static const us = <VolumeUnit>{
    VolumeUnit.usTeaspoon,
    VolumeUnit.usLegalCup,
    VolumeUnit.usFluidOunce,
    VolumeUnit.usTablespoon,
    VolumeUnit.usLiquidQuart,
    VolumeUnit.usCustomaryCup,
    VolumeUnit.usLiquidPint,
    VolumeUnit.usLiquidGallon,
  };

  /// Contains commonly used International System of Units (SI) [VolumeUnit]s.
  static const commonSi = <VolumeUnit>{
    VolumeUnit.milliliter,
    VolumeUnit.centiliter,
    VolumeUnit.deciliter,
    VolumeUnit.liter,
  };
}

/// Contains extensions for [VolumeUnit].
extension VolumeUnitExtensions on VolumeUnit {
  Rational get _cubicMeterCount {
    switch (this) {
      // SI.
      case VolumeUnit.cubicNanometer:
        return cubicMetersInCubicNanometer;
      case VolumeUnit.cubicMicrometer:
        return cubicMetersInCubicMicrometer;
      case VolumeUnit.cubicMillimeter:
        return cubicMetersInCubicMillimeter;
      case VolumeUnit.milliliter:
        return cubicMetersInMilliliter;
      case VolumeUnit.centiliter:
        return cubicMetersInCentiliter;
      case VolumeUnit.deciliter:
        return cubicMetersInDeciliter;
      case VolumeUnit.liter:
        return cubicMetersInLiter;
      case VolumeUnit.teaspoon:
        return cubicMetersInTeaspoon;
      case VolumeUnit.tablespoon:
        return cubicMetersInTablespoon;
      case VolumeUnit.cubicMeter:
        return cubicMetersInCubicMeter;
      case VolumeUnit.cubicDecameter:
        return cubicMetersInCubicDecameter;
      case VolumeUnit.cubicKilometer:
        return cubicMetersInCubicKilometer;
      case VolumeUnit.cubicMegameter:
        return cubicMetersInCubicMegameter;
      case VolumeUnit.cubicGigameter:
        return cubicMetersInCubicGigameter;

      // Imperial.
      case VolumeUnit.cubicThou:
        return cubicMetersInCubicThou;
      case VolumeUnit.imperialTeaspoon:
        return cubicMetersInImperialTeaspoon;
      case VolumeUnit.imperialTablespoon:
        return cubicMetersInImperialTablespoon;
      case VolumeUnit.imperialFluidOunce:
        return cubicMetersInImperialFluidOunce;
      case VolumeUnit.imperialCup:
        return cubicMetersInImperialCup;
      case VolumeUnit.imperialPint:
        return cubicMetersInImperialPint;
      case VolumeUnit.imperialQuart:
        return cubicMetersInImperialQuart;
      case VolumeUnit.imperialGallon:
        return cubicMetersInImperialGallon;
      case VolumeUnit.cubicInch:
        return cubicMetersInCubicInch;
      case VolumeUnit.cubicFoot:
        return cubicMetersInCubicFoot;
      case VolumeUnit.cubicYard:
        return cubicMetersInCubicYard;
      case VolumeUnit.cubicMile:
        return cubicMetersInCubicMile;

      // US.
      case VolumeUnit.usTeaspoon:
        return cubicMetersInUsTeaspoon;
      case VolumeUnit.usTablespoon:
        return cubicMetersInUsTablespoon;
      case VolumeUnit.usFluidOunce:
        return cubicMetersInUsFluidOunce;
      case VolumeUnit.usCustomaryCup:
        return cubicMetersInUsCustomaryCup;
      case VolumeUnit.usLegalCup:
        return cubicMetersInUsLegalCup;
      case VolumeUnit.usLiquidPint:
        return cubicMetersInUsLiquidPint;
      case VolumeUnit.usLiquidQuart:
        return cubicMetersInUsLiquidQuart;
      case VolumeUnit.usLiquidGallon:
        return cubicMetersInUsLiquidGallon;
    }
  }

  /// Gets a localized name for this unit.
  String getName({
    required String locale,
  }) {
    final loc = lookupAppLocalizations(Locale(locale.split('_').first));
    switch (this) {
      // SI.
      case VolumeUnit.cubicNanometer:
        return loc.cubicNanometer;
      case VolumeUnit.cubicMicrometer:
        return loc.cubicMicrometer;
      case VolumeUnit.cubicMillimeter:
        return loc.cubicMillimeter;
      case VolumeUnit.milliliter:
        return loc.milliliter;
      case VolumeUnit.centiliter:
        return loc.centiliter;
      case VolumeUnit.deciliter:
        return loc.deciliter;
      case VolumeUnit.liter:
        return loc.liter;
      case VolumeUnit.cubicMeter:
        return loc.cubicMeter;
      case VolumeUnit.cubicDecameter:
        return loc.cubicDecameter;
      case VolumeUnit.cubicKilometer:
        return loc.cubicKilometer;
      case VolumeUnit.cubicMegameter:
        return loc.cubicMegameter;
      case VolumeUnit.cubicGigameter:
        return loc.cubicGigameter;
      case VolumeUnit.teaspoon:
        return loc.teaspoon;
      case VolumeUnit.tablespoon:
        return loc.tablespoon;

      // Imperial.
      case VolumeUnit.cubicThou:
        return loc.cubicThou;
      case VolumeUnit.imperialTeaspoon:
        return loc.imperialTeaspoon;
      case VolumeUnit.imperialTablespoon:
        return loc.imperialTablespoon;
      case VolumeUnit.imperialFluidOunce:
        return loc.imperialFluidOunce;
      case VolumeUnit.imperialCup:
        return loc.imperialCup;
      case VolumeUnit.imperialPint:
        return loc.imperialPint;
      case VolumeUnit.imperialQuart:
        return loc.imperialQuart;
      case VolumeUnit.imperialGallon:
        return loc.imperialGallon;
      case VolumeUnit.cubicInch:
        return loc.cubicInch;
      case VolumeUnit.cubicFoot:
        return loc.cubicFoot;
      case VolumeUnit.cubicYard:
        return loc.cubicYard;
      case VolumeUnit.cubicMile:
        return loc.cubicMile;

      // US.
      case VolumeUnit.usTeaspoon:
        return loc.usTeaspoon;
      case VolumeUnit.usTablespoon:
        return loc.usTablespoon;
      case VolumeUnit.usFluidOunce:
        return loc.usFluidOunce;
      case VolumeUnit.usCustomaryCup:
        return loc.usCustomaryCup;
      case VolumeUnit.usLegalCup:
        return loc.usLegalCup;
      case VolumeUnit.usLiquidPint:
        return loc.usLiquidPint;
      case VolumeUnit.usLiquidQuart:
        return loc.usLiquidQuart;
      case VolumeUnit.usLiquidGallon:
        return loc.usLiquidGallon;
    }
  }

  /// Gets a localized symbol for this unit.
  String getSymbol({
    required String locale,
  }) {
    final loc = lookupAppLocalizations(Locale(locale.split('_').first));
    switch (this) {
      // SI.
      case VolumeUnit.cubicNanometer:
        return loc.cubicNanometerSymbol;
      case VolumeUnit.cubicMicrometer:
        return loc.cubicMicrometerSymbol;
      case VolumeUnit.cubicMillimeter:
        return loc.cubicMillimeterSymbol;
      case VolumeUnit.centiliter:
        return loc.centiliterSymbol;
      case VolumeUnit.deciliter:
        return loc.deciliterSymbol;
      case VolumeUnit.milliliter:
        return loc.milliliterSymbol;
      case VolumeUnit.liter:
        return loc.literSymbol;
      case VolumeUnit.cubicMeter:
        return loc.cubicMeterSymbol;
      case VolumeUnit.cubicDecameter:
        return loc.cubicDecameterSymbol;
      case VolumeUnit.cubicKilometer:
        return loc.cubicKilometerSymbol;
      case VolumeUnit.cubicMegameter:
        return loc.cubicMegameterSymbol;
      case VolumeUnit.cubicGigameter:
        return loc.cubicGigameterSymbol;
      case VolumeUnit.teaspoon:
        return loc.teaspoonSymbol;
      case VolumeUnit.tablespoon:
        return loc.tablespoonSymbol;

      // Imperial.
      case VolumeUnit.cubicThou:
        return loc.cubicThouSymbol;
      case VolumeUnit.imperialTeaspoon:
        return loc.imperialTeaspoonSymbol;
      case VolumeUnit.imperialTablespoon:
        return loc.imperialTablespoonSymbol;
      case VolumeUnit.imperialFluidOunce:
        return loc.imperialFluidOunceSymbol;
      case VolumeUnit.imperialCup:
        return loc.imperialCupSymbol;
      case VolumeUnit.imperialPint:
        return loc.imperialPintSymbol;
      case VolumeUnit.imperialQuart:
        return loc.imperialQuartSymbol;
      case VolumeUnit.imperialGallon:
        return loc.imperialGallonSymbol;
      case VolumeUnit.cubicInch:
        return loc.cubicInchSymbol;
      case VolumeUnit.cubicFoot:
        return loc.cubicFootSymbol;
      case VolumeUnit.cubicYard:
        return loc.cubicYardSymbol;
      case VolumeUnit.cubicMile:
        return loc.cubicMileSymbol;

      // US.
      case VolumeUnit.usTeaspoon:
        return loc.usTeaspoonSymbol;
      case VolumeUnit.usTablespoon:
        return loc.usTablespoonSymbol;
      case VolumeUnit.usFluidOunce:
        return loc.usFluidOunceSymbol;
      case VolumeUnit.usCustomaryCup:
        return loc.usCustomaryCupSymbol;
      case VolumeUnit.usLegalCup:
        return loc.usLegalCupSymbol;
      case VolumeUnit.usLiquidPint:
        return loc.usLiquidPintSymbol;
      case VolumeUnit.usLiquidQuart:
        return loc.usLiquidQuartSymbol;
      case VolumeUnit.usLiquidGallon:
        return loc.usLiquidGallonSymbol;
    }
  }

  /// Gets the pattern specifier for this unit.
  String get patternSpecifier {
    switch (this) {
      // Imperial.
      case VolumeUnit.imperialTeaspoon:
        return 'tsp_imp';
      case VolumeUnit.imperialTablespoon:
        return 'Tbsp_imp';
      case VolumeUnit.imperialFluidOunce:
        return 'fl_oz_imp';
      case VolumeUnit.imperialCup:
        return 'c_imp';
      case VolumeUnit.imperialPint:
        return 'pt_imp';
      case VolumeUnit.imperialGallon:
        return 'gal_imp';

      // US.
      case VolumeUnit.usTeaspoon:
        return 'tsp_us';
      case VolumeUnit.usTablespoon:
        return 'Tbsp_us';
      case VolumeUnit.usCustomaryCup:
        return 'c_us_customary';
      case VolumeUnit.usLegalCup:
        return 'c_us_legal';
      case VolumeUnit.usFluidOunce:
        return 'fl_oz_us';
      case VolumeUnit.usLiquidPint:
        return 'pt_us';
      case VolumeUnit.usLiquidGallon:
        return 'gal_us';

      default:
        return getSymbol(
          locale: 'en',
        );
    }
  }
}

/// Represents a rate of change in [Volume].
class VolumeRate extends UnitOfMeasurementRate<Volume> {
  const VolumeRate._({
    required Volume value,
    required Duration period,
  }) : super(
          value: value,
          period: period,
        );

  static final _defaultFormat = VolumeRateFormat();

  @override
  String toString() => _defaultFormat.format(this);
}

/// Allows a [Volume] to be formatted.
///
/// See [UnitOfMeasurementFormat] for general notes on the pattern syntax, which you can combine with the [VolumeUnit]
/// pattern specifiers as required:
///
/// | | Unit | Specifier |
/// |:-|:-|:-|
/// | **S.I.** | cubic nanometer | `nm³` |
/// | | cubic micrometer | `μm³` |
/// | | cubic millimeter | `mm³` |
/// | | milliliter | `mL³` |
/// | | liter | `L` |
/// | | cubic meter | `m³` |
/// | | cubic decameter | `dam³` |
/// | | cubic kilometer | `km³` |
/// | | cubic megameter | `Mm³` |
/// | | cubic gigameter | `Gm³` |
/// | **Imperial** | cubic thou | `thou³` |
/// | | imperial teaspoon | `tsp_imp` |
/// | | imperial tablespoon | `Tbsp_imp` |
/// | | imperial fluid ounce | `fl_oz_imp` |
/// | | imperial cup | `c_imp` |
/// | | imperial pint | `pt_imp` |
/// | | imperial quart | `qt` |
/// | | imperial gallon | `gal_imp` |
/// | | cubic inch | `in³` |
/// | | cubic foot | `ft³` |
/// | | cubic yard | `yd³` |
/// | | cubic mile | `mi³` |
/// | **U.S.** | US teaspoon | `tsp_us` |
/// | | US tablespoon | `Tbsp_us` |
/// | | US fluid ounce | `fl_oz_us` |
/// | | US customary cup | `c_us_customary` |
/// | | US legal cup | `c_us_legal` |
/// | | US liquid pint | `pt_us` |
/// | | US liquid quart | `qt` |
/// | | US liquid gallon | `gal_us` |
///
/// ```
/// final volume = 42.liters();
///
/// // '42L'
/// final result1 = VolumeFormat().format(volume);
///
/// // '42 Liters'
/// final result2 = VolumeFormat(pattern: '0.## U').format(volume);
///
/// // '42,000,000 mm³'
/// final result3 = VolumeFormat(
///   pattern: '###,##0.## u:mm³',
///   permissibleValueUnits: VolumeUnits.si,
/// ).format(volume);
/// ```
///
/// See also:
/// * [UnitOfMeasurementFormat]
class VolumeFormat extends _BaseVolumeFormat<Volume> {
  VolumeFormat({
    String pattern =
        '0.##${UnitOfMeasurementFormat.valueUnitSymbolFormatSpecifier}',
    Set<VolumeUnit> permissibleValueUnits = VolumeUnits.commonSi,
    String? locale,
  }) : super._(
          pattern: pattern,
          permissibleValueUnits: permissibleValueUnits,
          permissibleRateUnits: const <RateUnit>{},
          locale: locale,
        );

  @override
  VolumeUnit getLargestUnit(Volume input) =>
      input.getLargestUnit(permissibleUnits: permissibleValueUnits);

  @override
  Rational getUnitQuantity(Volume input, VolumeUnit unit) =>
      input.getUnits(unit);

  @override
  Volume scaleToRateUnit(Volume input, RateUnit rateUnit) =>
      throw UnsupportedError('Cannot scale Volume to a RateUnit');
}

/// Allows a [VolumeRate] to be formatted.
///
/// See [UnitOfMeasurementFormat] for general notes on the pattern syntax and [VolumeRate] for volume-specific notes.
///
/// ```
/// final volumeRate = 42.liters().per(const Duration(minutes: 1));
///
/// // '2520L/hr'
/// final result1 = VolumeRateFormat().format(volumeRate);
///
/// // '2520 Liters per hour'
/// final result2 = VolumeRateFormat(pattern: "0.## U 'per' R").format(volumeRate);
///
/// // '14,950.84 ft³/wk'
/// final result3 = VolumeRateFormat(
///   pattern: "###,##0.## u:ft³'/'r:wk",
///   permissibleValueUnits: VolumeUnits.imperial,
///   permissibleRateUnits: RateUnits.all,
/// ).format(volumeRate);
/// ```
///
/// See also:
/// * [UnitOfMeasurementFormat]
/// * [VolumeRate]
class VolumeRateFormat extends _BaseVolumeFormat<VolumeRate> {
  VolumeRateFormat({
    String pattern =
        "0.##${UnitOfMeasurementFormat.valueUnitSymbolFormatSpecifier}'/'${UnitOfMeasurementFormat.rateUnitSymbolFormatSpecifier}",
    Set<VolumeUnit> permissibleValueUnits = VolumeUnits.commonSi,
    Set<RateUnit> permissibleRateUnits = RateUnits.hourOrLess,
    String? locale,
  }) : super._(
          pattern: pattern,
          permissibleValueUnits: permissibleValueUnits,
          permissibleRateUnits: permissibleRateUnits,
          locale: locale,
        );

  @override
  VolumeUnit getLargestUnit(VolumeRate input) =>
      input.value.getLargestUnit(permissibleUnits: permissibleValueUnits);

  @override
  Rational getUnitQuantity(VolumeRate input, VolumeUnit unit) =>
      input.value.getUnits(unit);

  @override
  VolumeRate scaleToRateUnit(VolumeRate input, RateUnit rateUnit) {
    final scaledPeriod = rateUnit.duration;
    final scale = Rational.fromInt(scaledPeriod.inMicroseconds) /
        Rational.fromInt(input.period.inMicroseconds);
    final result = Volume.fromCubicMeters(input.value.cubicMeters * scale)
        .per(scaledPeriod);
    return result;
  }
}

abstract class _BaseVolumeFormat<TInput>
    extends UnitOfMeasurementFormat<TInput, VolumeUnit> {
  _BaseVolumeFormat._({
    required String pattern,
    required this.permissibleValueUnits,
    required this.permissibleRateUnits,
    required String? locale,
  }) : super(
          pattern: pattern,
          locale: locale,
        );

  final Set<VolumeUnit> permissibleValueUnits;
  final Set<RateUnit> permissibleRateUnits;

  @override
  String getPatternSpecifierFor(VolumeUnit valueUnit) =>
      valueUnit.patternSpecifier;

  @override
  Set<RateUnit> getPermissibleRateUnits() => permissibleRateUnits;

  @override
  Set<VolumeUnit> getPermissibleValueUnits() => permissibleValueUnits;

  @override
  String getUnitName(VolumeUnit unit, String locale) =>
      unit.getName(locale: locale);

  @override
  String getUnitSymbol(VolumeUnit unit, String locale) =>
      unit.getSymbol(locale: locale);
}
