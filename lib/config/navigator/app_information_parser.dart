import 'package:flutter/material.dart';
import 'package:k_profile/config/navigator/app_configuration.dart';

class AppInformationParser extends RouteInformationParser<AppConfiguration> {
  @override
  Future<AppConfiguration> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.tryParse(routeInformation.location!);
    if (uri == null) return HomeConfiguration();
    if (uri.pathSegments.isEmpty) {
      return HomeConfiguration();
    }
    return HomeConfiguration();
  }

  @override
  RouteInformation? restoreRouteInformation(AppConfiguration configuration) {
    if (configuration.isBlog) {
      return const RouteInformation(location: '/blog');
    } else if (configuration.isContact) {
      return const RouteInformation(location: '/contact');
    } else if (configuration.isResume) {
      return const RouteInformation(location: '/resume');
    } else if (configuration.isPortfolio) {
      return const RouteInformation(location: '/portfolio');
    }
    return const RouteInformation(location: '');
  }
}
