import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k_profile/const/color.dart';
import 'package:k_profile/enum/social_network_enum.dart';

class Social {
  final String text;
  final SocialEnum type;
  final Function()? onTap;

  Social(this.text, this.type, {this.onTap});
}

class SocialNetwork extends StatelessWidget {
  final List<Social> items;
  const SocialNetwork({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [for (final social in items) _SocialItem(social)],
    );
  }
}

class _SocialItem extends StatelessWidget {
  final Social social;
  _SocialItem(this.social, {Key? key}) : super(key: key);
  final style = GoogleFonts.poppins(
      fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16),
      child: Text(
        social.text,
        style: style,
      ),
    );
  }
}
