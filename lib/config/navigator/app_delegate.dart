import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:k_profile/config/navigator/app_configuration.dart';
import 'package:k_profile/config/navigator/page/home_page.dart';
import 'package:k_profile/config/navigator/route.dart';

class AppDelegate extends RouterDelegate<AppConfiguration>
    with
        ChangeNotifier,
        PopNavigatorRouterDelegateMixin<AppConfiguration>,
        NavigatorObserver {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  final AppConfiguration _configuration = HomeConfiguration();
  @override
  Future<void> setInitialRoutePath(AppConfiguration configuration) {
    return super.setInitialRoutePath(configuration);
  }

  @override
  AppConfiguration? get currentConfiguration => _configuration;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
      initialRoute: !kIsWeb ? '/' : null,
      observers: [this],
      pages: [HomeRoute()],
      onGenerateRoute: RouteUtil.onGenerateRote,
      onPopPage: (route, result) {
        if (!route.didPop(result)) return false;
        return true;
      },
    );
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  @override
  Future<void> setNewRoutePath(AppConfiguration configuration) async {
    if (configuration.isHome) {}
    notifyListeners();
  }
}
