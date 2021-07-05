import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k_profile/extension/context_extenstion.dart';

class TitleJob extends StatelessWidget {
  TitleJob({Key? key}) : super(key: key);
  final style = GoogleFonts.poppins(
    fontSize: 32,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );
  @override
  Widget build(BuildContext context) {
    return Text(
      context.L.software_job_title,
      style: style,
    );
  }
}
