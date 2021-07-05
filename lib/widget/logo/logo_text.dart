import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoText extends StatelessWidget {
  final String name;
  LogoText(this.name, {Key? key}) : super(key: key);

  final style = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: const Color(0xFF222222),
  );

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
        text: '${name.split(' ').first} ',
        style: style.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      TextSpan(text: name.split(' ').last, style: style),
    ]));
  }
}
