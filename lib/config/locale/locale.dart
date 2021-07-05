import 'package:flutter/material.dart';

class Localization {
  final Locale _locale;
  Localization(this._locale);

  static Locale get vi => const Locale('vi', '');
  static Locale get en => const Locale('en', '');

  bool isTrue(Locale locale) {
    if (_locale.languageCode == locale.languageCode) return true;
    return false;
  }

  static List<Locale> get supportLanguage {
    return const <Locale>[
      Locale('vi', ''),
      Locale('en', ''),
    ];
  }

  bool isSupport(Locale locale) {
    for (final l in supportLanguage) {
      if (l.languageCode == locale.toLanguageTag()) {
        return true;
      }
    }
    return false;
  }
}
