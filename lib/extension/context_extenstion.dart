import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension TranslationExtension on BuildContext {
  AppLocalizations get L => AppLocalizations.of(this)!;
}

extension MediaQueryExtension on BuildContext {
  Size get s => MediaQuery.of(this).size;
  EdgeInsets get padding => MediaQuery.of(this).padding;
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;
}
