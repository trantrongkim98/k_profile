enum MainBackgroundEnum { left, top, right, bottom, unknown }

extension MainBackgroundEnumExtension on MainBackgroundEnum {
  double get vertical {
    if (this == MainBackgroundEnum.top) {
      return -18;
    } else if (this == MainBackgroundEnum.bottom) {
      return 18.0;
    }
    return 0;
  }

  double get horizontal {
    if (this == MainBackgroundEnum.left) {
      return -18;
    } else if (this == MainBackgroundEnum.right) {
      return 18.0;
    }
    return 0;
  }
}
