import 'package:humanizer/src/transformations/plurality.dart';

PluralizationRules createNorwegianPluralizationRules() {
  final result = PluralizationRules();

  _NB_irregularWordsWithMatchEnding.forEach(
      (singular, plural) => result.addIrregularRule(
            singular: singular,
            plural: plural,
            matchEnding: true,
          ));

  _NB_irregularWordsWithoutMatchEnding.forEach(
      (singular, plural) => result.addIrregularRule(
            singular: singular,
            plural: plural,
            matchEnding: false,
          ));

  _NB_PluralRules.forEach((pattern, replacement) => result.addPluralRule(
        pattern: RegExp(
          pattern,
          caseSensitive: false,
        ),
        replacement: replacement,
      ));

  _NB_singularRules.forEach((pattern, replacement) => result.addSingularRule(
        pattern: RegExp(
          pattern,
          caseSensitive: false,
        ),
        replacement: replacement,
      ));

  _NB_uncountables.forEach(result.addUncountable);

  return result;
}

final _NB_PluralRules = <String, String>{
  // r'(apheli|hyperbat|periheli|asyndet|noumen|phenomen|criteri|organ|prolegomen|hedr|automat)(?:a|on)\b':
  //     r'$1a',
  // r'(alumn|alg|larv|vertebr)a\b': r'$1ae',
  // r'(hoo|lea|loa|thie)f\b': r'$1ves',
  // r'(buz|blit|walt)z\b': r'$1zes',
  // r'(quiz)\b': r'$1zes',
  // r'(\b[m|l])ouse\b': r'$1ice',
  // r'(matr|vert|ind|d)ix|ex\b': r'$1ices',
  // r'(x|ch|ss|sh)\b': r'$1es',
  // r'([^aeiouy]|qu)y\b': r'$1ies',
  // r'(hive)\b': r'$1s',
  // r'(?:(kni|wi|li)fe|(ar|l|ea|eo|oa|hoo)f)\b': r'$1$2ves',
  // r'sis\b': 'ses',
  // r'([dti])um\b': r'$1a',
  // r'(buffal|tomat|volcan|ech|embarg|her|mosquit|potat|torped|vet)o\b': r'$1oes',
  // r'(alias|bias|hippopotamus|octopus|iris|status|campus|apparatus|virus|walrus|trellis)\b':
  //     r'$1es',
  // r'(vir|alumn|fung|cact|foc|radi|stimul|syllab|nucle)us\b': r'$1i',
  // r'(ax|test)is\b': r'$1es',
  // r'(seraph|cherub)(?:im)?\b': r'$1im',
  r'e\b': 'er',
  r'er\b': 'er',
  r'(\w)\b': r'$1er',
};

final _NB_singularRules = <String, String>{
  // r'([b|r|c]ook|room|smooth)ies\b': r'$1ie',
  // r'(criteri|phenomen)a\b': r'$1on',
  // r'(alumn|alg|larv|vertebr)ae\b': r'$1a',
  // r'(buz|blit|walt)zes\b': r'$1z',
  // r'(quiz)zes\b': r'$1',
  // r'(vert|ind)ices\b': r'$1ex',
  // r'(matr|d)ices\b': r'$1ix',
  // r'(alias|bias|hippopotamus|octopus|iris|status|campus|apparatus|virus|walrus|trellis)es\b':
  //     r'$1',
  // r'(vir|alumn|fung|cact|foc|radi|stimul|syllab|nucle)i\b': r'$1us',
  // r'(cris|ax|test)es\b': r'$1is',
  // r'(shoe)s\b': r'$1',
  // r'(o)es\b': r'$1',
  // r'(\b[m|l])ice\b': r'$1ouse',
  // r'(x|ch|ss|sh)es\b': r'$1',
  // r'(m)ovies\b': r'$1ovie',
  // r'(s)eries\b': r'$1eries',
  // r'(\bzomb)?([^aeiouy]|qu)ies\b': r'$2y',
  // r'([lr]|hoo|lea|loa|thie)ves\b': r'$1f',
  // r'(tive)s\b': r'$1',
  // r'(hive)s\b': r'$1',
  // r'(wi|kni|(?:after|half|high|low|mid|non|night|[^\w]|^)li)ves\b': r'$1fe',
  // r'(analy|ba|diagno|parenthe|progno|synop|the|ellip|empha|neuro|oa|paraly)ses\b':
  //     r'$1sis',
  // r'([dti])a\b': r'$1um',
  // r'(n)ews\b': r'$1ews',
  // r'(seraph|cherub)im\b': r'$1',
  // r'e\b': 'er',
  r'er\b': '',
};

// Words that don't pluralize in a manner best described with rules, matched at ending (full match not required).
final _NB_irregularWordsWithMatchEnding = <String, String>{
  // 'cache': 'caches',
  // 'child': 'children',
  // 'curriculum': 'curricula',
  // 'database': 'databases',
  // 'die': 'dice',
  // 'foot': 'feet',
  // 'glove': 'gloves',
  // 'goose': 'geese',
  // 'human': 'humans',
  // 'man': 'men',
  // 'move': 'moves',
  // 'person': 'people',
  // 'personnel': 'personnel',
  // 'sex': 'sexes',
  // 'tooth': 'teeth',
  // 'wave': 'waves',
  // 'zombie': 'zombies',
};

// Same, but don't fully match only.
final _NB_irregularWordsWithoutMatchEnding = <String, String>{
  // 'bus': 'buses',
  // 'ex': 'exes',
  // 'he': 'they',
  // 'herself': 'themselves',
  // 'himself': 'themselves',
  // 'i': 'we',
  // 'is': 'are',
  // 'it': 'they',
  // 'itself': 'themselves',
  // 'me': 'us',
  // 'myself': 'ourselves',
  // 'ox': 'oxen',
  // 'she': 'they',
  // 'staff': 'staff',
  // 'that': 'those',
  // 'this': 'these',
  // 'training': 'training',
};

// Singular form words with no plural.
final _NB_uncountables = <String>{
  'barn',
  'hus',
  'lam',
  'strå',
  'tak',
  'vers',
  'blad',
  'bord',
  'fat',
  'hull',
  'verk'
  // 'adulthood',
  // 'advice',
  // 'agenda',
  // 'aid',
  // 'aircraft',
  // 'alcohol',
  // 'ammo',
  // 'analytics',
  // 'anime',
  // 'athletics',
  // 'audio',
  // 'bison',
  // 'blood',
  // 'bream',
  // 'butter',
  // 'carp',
  // 'cash',
  // 'chassis',
  // 'chess',
  // 'clothing',
  // 'cod',
  // 'commerce',
  // 'cooperation',
  // 'corn',
  // 'corps',
  // 'debris',
  // 'deer',
  // 'diabetes',
  // 'digestion',
  // 'elk',
  // 'energy',
  // 'equipment',
  // 'excretion',
  // 'expertise',
  // 'firmware',
  // 'fish',
  // 'flounder',
  // 'fun',
  // 'gallows',
  // 'garbage',
  // 'graffiti',
  // 'grass',
  // 'hair',
  // 'hardware',
  // 'headquarters',
  // 'health',
  // 'herpes',
  // 'highjinks',
  // 'homework',
  // 'housework',
  // 'information',
  // 'jeans',
  // 'justice',
  // 'kudos',
  // 'l',
  // 'labour',
  // 'literature',
  // 'luggage',
  // 'machinery',
  // 'mackerel',
  // 'mail',
  // 'manga',
  // 'means',
  // 'mews',
  // 'milk',
  // 'ml',
  // 'money',
  // 'moose',
  // 'mud',
  // 'music',
  // 'news',
  // 'offspring',
  // 'only',
  // 'oz',
  // 'personnel',
  // 'pike',
  // 'plankton',
  // 'pliers',
  // 'police',
  // 'pollution',
  // 'premises',
  // 'rain',
  // 'research',
  // 'rice',
  // 'salmon',
  // 'scissors',
  // 'semen',
  // 'series',
  // 'sewage',
  // 'shambles',
  // 'sheep',
  // 'shrimp',
  // 'software',
  // 'someone',
  // 'species',
  // 'sperm',
  // 'staff',
  // 'swine',
  // 'tbsp',
  // 'tennis',
  // 'traffic',
  // 'transportation',
  // 'trout',
  // 'tsp',
  // 'tuna',
  // 'water',
  // 'waters',
  // 'wealth',
  // 'welfare',
  // 'which',
  // 'whiting',
  // 'who',
  // 'wildebeest',
  // 'wildlife',
  // 'you',
};
