import 'package:flutter/material.dart';
import 'package:k_profile/widget/logo/logo_symboy.dart';
import 'package:k_profile/widget/logo/logo_text.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const LogoSymboy('Kim Tran'),
        const SizedBox(width: 8),
        LogoText('Kim Tran'),
      ],
    );
  }
}
