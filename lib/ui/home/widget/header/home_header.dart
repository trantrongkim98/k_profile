import 'package:flutter/material.dart';
import 'package:k_profile/enum/menu_enum.dart';
import 'package:k_profile/widget/logo/logo.dart';
import 'package:k_profile/widget/menu/menu_option.dart';
import 'package:k_profile/extension/context_extenstion.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
      child: SizedBox(
        height: 50,
        child: Row(
          children: <Widget>[
            const Logo(),
            Expanded(
                child: MenuOption(
              items: [
                MenuItem(context.L.about_me_title, MenuEnum.aboutMe),
                MenuItem(context.L.resume_title, MenuEnum.resume,
                    isDropdownIcon: false),
                MenuItem(context.L.portfolio_title, MenuEnum.portfolio),
                MenuItem(context.L.blog_title, MenuEnum.blog),
                MenuItem(context.L.contact_title, MenuEnum.contact,
                    isDropdownIcon: false),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
