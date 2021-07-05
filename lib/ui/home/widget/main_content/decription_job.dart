import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionJob extends StatelessWidget {
  DescriptionJob({Key? key}) : super(key: key);
  final style = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: const Color(0xFF666666),
  );
  @override
  Widget build(BuildContext context) {
    return Text(
      // ignore: lines_longer_than_80_chars
      'Quisque lorem eros, ultrices commodo tortor ut, cursus venenatis elit. Morbi aliquam aliquam malesuada. Pellentesque id mauris porttitor, cursus libero sit.',
      style: style,
    );
  }
}
