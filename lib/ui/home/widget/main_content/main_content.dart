import 'package:flutter/material.dart';
import 'package:k_profile/ui/home/widget/main_content/decription_job.dart';
import 'package:k_profile/ui/home/widget/main_content/title_job.dart';
import 'package:k_profile/widget/image/avatar.dart';
import 'package:k_profile/widget/button/hover_button.dart';

class MainContent extends StatelessWidget {
  MainContent({Key? key}) : super(key: key);

  // ignore: prefer_const_constructors
  final padding = EdgeInsets.symmetric(horizontal: 15);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.1,
        horizontal: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: padding,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleJob(),
                  const SizedBox(height: 20),
                  DescriptionJob(),
                  const SizedBox(height: 20),
                  const HoverButton()
                ],
              ),
            ),
          ),
          Padding(
            padding: padding,
            child: Avatar(
              height: MediaQuery.of(context).size.width * 0.25,
              width: MediaQuery.of(context).size.width * 0.25,
            ),
          ),
        ],
      ),
    );
  }
}
