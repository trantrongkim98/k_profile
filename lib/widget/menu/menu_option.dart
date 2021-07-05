import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k_profile/enum/menu_enum.dart';
import 'package:k_profile/state/menu_status_provider.dart';

class MenuItem {
  final String text;
  final MenuEnum menu;
  final Function(Offset offset)? onTap;
  final Function()? onHover;
  final bool isDropdownIcon;
  final bool isPaddingRight;

  const MenuItem(
    this.text,
    this.menu, {
    this.onTap,
    this.onHover,
    this.isDropdownIcon = true,
    this.isPaddingRight = true,
  });
}

class MenuOption extends StatelessWidget {
  final List<MenuItem> items;
  const MenuOption({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          for (final item in items) MenuOptionItem(item),
        ],
      ),
    );
  }
}

class MenuOptionItem extends ConsumerWidget {
  final MenuItem item;
  MenuOptionItem(this.item, {Key? key}) : super(key: key);
  final style = GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF222222));
  final styleSelected = GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF333333));
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final value = watch(menuStateProvider);
    final notifier = watch(menuStateProvider.notifier);

    return GestureDetector(
      onTap: () {
        notifier.updateMenu(item.menu);
      },
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            Text(
              item.text,
              style: value == item.menu ? styleSelected : style,
            ),
            if (item.isDropdownIcon)
              const Icon(
                Icons.arrow_drop_down_outlined,
                color: Color(0xFF6C757D),
              ),
            if (item.isPaddingRight) const SizedBox(width: 40),
          ],
        ),
      ),
    );
  }
}
