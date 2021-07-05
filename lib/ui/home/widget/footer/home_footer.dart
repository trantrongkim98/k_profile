import 'package:flutter/material.dart';
import 'package:k_profile/enum/social_network_enum.dart';
import 'package:k_profile/widget/social_network/social_network.dart';
import 'package:k_profile/extension/context_extenstion.dart';

class HomeFooter extends StatelessWidget {
  HomeFooter({Key? key}) : super(key: key);
  // ignore: prefer_const_constructors
  final borderSide = BorderSide(
    color: Colors.black,
    width: 0.3,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        border: Border(
          top: borderSide,
        ),
      ),
      child: Row(
        children: [
          SocialNetwork(
            items: [
              Social(context.L.twitter, SocialEnum.twitter),
              Social(context.L.facebook, SocialEnum.facebook),
              Social(context.L.instagram, SocialEnum.instagram),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
