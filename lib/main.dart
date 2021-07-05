import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:k_profile/config/locale/locale.dart';
import 'package:k_profile/config/logger/logger.dart';
import 'package:k_profile/config/navigator/app_delegate.dart';
import 'package:k_profile/config/navigator/app_information_parser.dart';
import 'package:k_profile/config/theme/dark_theme.dart';
import 'package:k_profile/config/theme/light_theme.dart';
import 'package:k_profile/const/app_const.dart';
import 'package:k_profile/state/locale_provider.dart';
import 'package:k_profile/state/mouse_hover_background.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  await SentryFlutter.init(
    (options) {
      options.dsn = sentryHost;
    },
    appRunner: () => runApp(const ProviderScope(child: App())),
  );
}

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final value = watch(localeProvider);

    return MaterialApp.router(
      darkTheme: dark,
      theme: light,
      locale: value,
      themeMode: ThemeMode.dark,
      routeInformationParser: AppInformationParser(),
      builder: (ctx, child) {
        return MouseRegion(
          onHover: (pointer) {
            final notifier = ctx.read(mouseHoverBackground.notifier);

            notifier.updateHover(pointer, ctx);
          },
          child: child,
        );
      },
      routerDelegate: AppDelegate(),
      supportedLocales: Localization.supportLanguage,
      localizationsDelegates: const <LocalizationsDelegate>[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      actions: <Type, Action<Intent>>{
        ...WidgetsApp.defaultActions,
        ActionListener: CallbackAction<Intent>(onInvoke: (intent) {
          LoggerApp('$intent').error;
        }),
      },
    );
  }
}
