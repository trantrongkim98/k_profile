import 'package:flutter/material.dart';
import 'package:k_profile/base/router/page_base.dart';
import 'package:k_profile/config/navigator/app_configuration.dart';
import 'package:k_profile/ui/home/home_page.dart';

class HomeRoute extends PageBase {
  HomeRoute()
      : super(HomeConfiguration(),
            key: ValueKey(DateTime.now().microsecondsSinceEpoch.toString()));

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings: this,
        builder: (ctx) {
          return const HomePage();
        });
  }
}
