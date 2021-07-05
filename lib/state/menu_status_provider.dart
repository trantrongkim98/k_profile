import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:k_profile/enum/menu_enum.dart';

final menuStateProvider =
    StateNotifierProvider<MenuState, MenuEnum>((ref) => MenuState());

class MenuState extends StateNotifier<MenuEnum> {
  MenuState() : super(MenuEnum.aboutMe);

  void updateMenu(MenuEnum menu) {
    if (menu != state) {
      state = menu;
    }
  }
}
