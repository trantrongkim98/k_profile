import 'package:flutter/material.dart';
import 'package:k_profile/config/navigator/app_configuration.dart';

abstract class PageBase extends Page {
  final AppConfiguration page;
  @override
  // ignore: overridden_fields
  final Object? arguments;
  @override
  // ignore: overridden_fields
  final LocalKey? key;
  @override
  // ignore: overridden_fields
  final String? name;
  @override
  // ignore: overridden_fields
  final String? restorationId;
  const PageBase(
    this.page, {
    this.arguments,
    this.key,
    this.name,
    this.restorationId,
  }) : super(
          arguments: arguments,
          key: key,
          name: name,
          restorationId: restorationId,
        );
}
