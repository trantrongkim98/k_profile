import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoSymboy extends StatelessWidget {
  final String name;
  const LogoSymboy(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 44,
      height: 44,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(44),
          color: Colors.blue,
        ),
        child: Text(
          name.trim().substring(0, 1),
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
