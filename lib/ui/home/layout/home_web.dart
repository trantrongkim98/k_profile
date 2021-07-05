import 'package:flutter/material.dart';
import 'package:k_profile/ui/home/widget/card_content.dart';
import 'package:k_profile/widget/main_background.dart';

class HomeWebLayout extends StatelessWidget {
  const HomeWebLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(child: MainBackground()),
          const Positioned(child: CardContent())
        ],
      ),
    );
  }
}
