import 'package:humanizer/humanizer.dart';
import 'package:humanizer/src/transformations/pluralizationRules_en.dart';
import 'package:humanizer/src/transformations/pluralizationRules_nb.dart';

/// A transformation to convert the plural form of an input [String].
///
/// This transformation attempts to convert the input [String] such that its plural form is modified to
/// [targetPlurality]. If it is known that inputs do not have the target plurality, setting
/// [inputMayAlreadyHaveTargetPlurality] to `false` will improve performance. Leaving it as `true` (the default value)
/// will ensure that transforming a word already of the target plurality will simply return that same word.
///
/// ```
/// final transformation = PluralityTransformation(targetPlurality: Plurality.plural);
///
/// // 'dogs'
/// transformation.transform('dog', 'en_US');
///
/// // 'dogs'
/// transformation.transform('dogs', 'en_US');
///
/// // 'foxes'
/// transformation.transform('fox', 'en_US');
///
/// // 'oxen'
/// transformation.transform('ox', 'en_US');
/// ```
class PluralityTransformation extends Transformation<String, String> {
  const PluralityTransformation({
    required this.targetPlurality,
    this.inputMayAlreadyHaveTargetPlurality = true,
  });

  static final _pluralizationRules = createEnglishPluralizationRules();

  /// The desired plurality for transformed inputs.
  final Plurality targetPlurality;

  /// If `true`, serves as an indicator that the plurality of the input may already match the target plurality. In
  /// scenarios where the input plurality is known to differ, set this to `false` to optimize the transformation
  /// process.
  final bool inputMayAlreadyHaveTargetPlurality;

  @override
  String transform(String input, String locale) {
    final pluralizationRules = lookupPluralizationRulesLocalizations(locale);
    switch (targetPlurality) {
      case Plurality.plural:
        final result = pluralizationRules.pluralize(
          input,
          wordIsKnownToBeSingular: !inputMayAlreadyHaveTargetPlurality,
        );
        return result;
      case Plurality.singular:
        final result = pluralizationRules.singularize(
          input,
          wordIsKnownToBePlural: !inputMayAlreadyHaveTargetPlurality,
        );
        return result;
    }
  }
}

/// Defines possible plurality values.
enum Plurality {
  /// Singular form.
  singular,

  /// Plural form.
  plural,
}

/// Encapsulates a set of rules used to transform the plurality of words.
class PluralizationRules {
  final _pluralRules = <_PluralizationRule>[];
  final _singularRules = <_PluralizationRule>[];
  final _uncountables = <String>{};

  /// Adds a rule that replaces [pattern] with [replacement] when converting to singular form.
  ///
  /// Patterns are matched in the order they are added, and only the first matching pattern is applied when converting
  /// to singular form.
  void addSingularRule({
    required Pattern pattern,
    required String replacement,
  }) =>
      _singularRules.add(_PluralizationRule(
        pattern: pattern,
        replacement: replacement,
      ));

  /// Adds a rule that replaces [pattern] with [replacement] when converting to plural form.
  ///
  /// Patterns are matched in the order they are added, and only the first matching pattern is applied when converting
  /// to plural form.
  void addPluralRule({
    required Pattern pattern,
    required String replacement,
  }) =>
      _pluralRules.add(_PluralizationRule(
        pattern: pattern,
        replacement: replacement,
      ));

  /// Adds a [word] that, when matched, is considered a word without a plural form and is therefore returned as is when
  /// attempting to change pluralization.
  void addUncountable(String word) => _uncountables.add(word.toLowerCase());

  /// Adds the appropriate rules to assume [singular] pluralizes to [plural] and vice-versa, which is useful for cases
  /// that are not readily expressed using a more general rule.
  ///
  /// If [matchEnding] is `true`, the added rules will apply if [singular] or [plural] appear after other characters,
  /// not just when they appear in isolation.
  void addIrregularRule({
    required String singular,
    required String plural,
    required matchEnding,
  }) {
    if (matchEnding) {
      addSingularRule(
        pattern: RegExp(
          '(${plural[0]})${plural.substring(1)}\\b',
          caseSensitive: false,
        ),
        replacement: '\$1${singular.substring(1)}',
      );
      addPluralRule(
        pattern: RegExp(
          '(${singular[0]})${singular.substring(1)}\\b',
          caseSensitive: false,
        ),
        replacement: '\$1${plural.substring(1)}',
      );
    } else {
      addSingularRule(
        pattern: RegExp(
          '\\b(\\s*?)$plural\\b',
          caseSensitive: false,
        ),
        replacement: '\$1$singular',
      );
      addPluralRule(
        pattern: RegExp(
          '\\b(\\s*?)$singular\\b',
          caseSensitive: false,
        ),
        replacement: '\$1$plural',
      );
    }
  }

  /// Convert [word] to plural form using the configured rules.
  ///
  /// [wordIsKnownToBeSingular] should be set to `true` only if [word] is definitely singular. Doing so is an
  /// optimization.
  String pluralize(
    String word, {
    bool wordIsKnownToBeSingular = false,
  }) {
    final result = _applyRules(word, _pluralRules);

    if (wordIsKnownToBeSingular) {
      return result;
    }

    // Convert to singular and back to plural on the assumption that word is plural.
    final singular = _applyRules(word, _singularRules);
    final singularAsPlural = _applyRules(singular, _pluralRules);

    // Figure out whether we actually started with plural form and, if so, return that.
    if (singular != word &&
        '${singular}s' != word &&
        singularAsPlural == word &&
        result != word) {
      return word;
    }

    return result;
  }

  /// Convert [word] to singular form using the configured rules.
  ///
  /// [wordIsKnownToBePlural] should be set to `true` only if [word] is definitely plural. Doing so is an
  /// optimization.
  String singularize(
    String word, {
    bool wordIsKnownToBePlural = false,
  }) {
    final result = _applyRules(word, _singularRules);

    if (wordIsKnownToBePlural) {
      return result;
    }

    // Convert to singular and back to plural on the assumption that word is plural.
    final plural = _applyRules(word, _pluralRules);
    final pluralAsSingular = _applyRules(plural, _singularRules);

    // Figure out whether we actually started with singular form and, if so, return that.
    if (plural != word &&
        '${word}s' != plural &&
        pluralAsSingular == word &&
        result != word) {
      return word;
    }

    return result;
  }

  bool _isUncountable(String word) =>
      _uncountables.contains(word.toLowerCase());

  String _applyRules(String word, Iterable<_PluralizationRule> rules) {
    final trimmedWord = word.trim();

    if (trimmedWord.isEmpty) {
      return word;
    }

    if (_isUncountable(trimmedWord)) {
      return word;
    }

    for (final rule in rules) {
      final result = rule.apply(word);

      if (result != null) {
        return result;
      }
    }

    return word;
  }
}

class _PluralizationRule {
  _PluralizationRule({
    required this.pattern,
    required this.replacement,
  });

  final Pattern pattern;
  final String replacement;

  String? apply(String word) {
    if (!word.contains(pattern)) {
      return null;
    }

    final result = word.replaceAllMapped(
      pattern,
      _getReplaceMatch(replacement),
    );

    return result;
  }
}

// See https://github.com/dart-lang/sdk/issues/2336
typedef _ReplaceMatch = String Function(Match match);

final _replacementsExpression = RegExp(r'\$(\d+)');

_ReplaceMatch _getReplaceMatch(String pattern) =>
    (match) => pattern.replaceAllMapped(_replacementsExpression, (m) {
          final groupNumber = int.parse(m[1]!);
          final result = match[groupNumber] ?? '';
          return result;
        });

PluralizationRules lookupPluralizationRulesLocalizations(String locale) {
  // Lookup logic when only language code is specified.
  switch (locale) {
    case 'en':
      return createEnglishPluralizationRules();
    case 'nb':
      return createNorwegianPluralizationRules();
    default:
      return createEnglishPluralizationRules();
  }

  // throw FlutterError(
  //     'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
  //     'an issue with the localizations generation tool. Please file an issue '
  //     'on GitHub with a reproducible sample app and the gen-l10n configuration '
  //     'that was used.');
}
