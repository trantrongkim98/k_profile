import 'package:flutter/material.dart';
import 'package:k_profile/ui/home/layout/home_mobile.dart';
import 'package:k_profile/ui/home/layout/home_web.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).size.width > 600
          ? const HomeWebLayout()
          : const HomeMobileLayout(),
    );
  }
}
