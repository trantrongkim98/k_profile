import 'package:flutter/material.dart';
import 'package:k_profile/ui/home/widget/footer/home_footer.dart';
import 'package:k_profile/ui/home/widget/header/home_header.dart';
import 'package:k_profile/ui/home/widget/main_content/main_content.dart';
import 'package:k_profile/extension/context_extenstion.dart';

class CardContent extends StatelessWidget {
  const CardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const paddingTop = 32.0;
    double horizontal = 70.0;
    double width = 1320;
    double radius = 40;
    if (context.s.width < 992) {
      radius = 0;
      horizontal = 0;
      width = context.s.width;
    } else if (context.s.width < 1410) {
      width = context.s.width * 0.94;
    }
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: paddingTop),
      child: Container(
          width: width,
          // constraints: BoxConstraints(maxWidth: width),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(radius),
          ),
          padding: EdgeInsets.symmetric(horizontal: horizontal),
          child: Column(
            children: <Widget>[
              const HomeHeader(),
              MainContent(),
              HomeFooter(),
            ],
          )),
    );
  }
}
