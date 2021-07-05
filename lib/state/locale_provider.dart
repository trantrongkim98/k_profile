import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:k_profile/config/locale/locale.dart';

final localeProvider =
    StateNotifierProvider<LocaleState, Locale>((ref) => LocaleState());

class LocaleState extends StateNotifier<Locale> {
  final Localization _localizationEn = Localization(Localization.en);
  LocaleState() : super(Localization.vi);

  void updateLocale() {
    if (_localizationEn.isTrue(state)) {
      state = Localization.vi;
    } else {
      state = Localization.en;
    }
  }
}
