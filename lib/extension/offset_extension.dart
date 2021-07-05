import 'package:flutter/material.dart';

extension TransformPosition on Offset {
  bool get isLeft => dx < -3 && dx > dy;
  bool get isTop => dy > 3 && dy > dx;
  bool get isRight => dx > 3 && dx >= dy;
  bool get isBottom => dy < -3 && dy >= dx;
  bool get isCenter {
    if (dx >= -3 && dx <= 3 && dy >= -3 && dy <= 3) {
      return true;
    }
    return false;
  }

  bool atLeft(Offset oldOffset) {
    if (isLeft) {
      if (isCenter || isTop || isRight || isBottom) {
        return true;
      }
    }

    return false;
  }

  bool atTop(Offset oldOffset) {
    if (isTop) {
      if (isCenter || isLeft || isRight || isBottom) {
        return true;
      }
    }
    return false;
  }

  bool atRight(Offset oldOffset) {
    if (isRight) {
      if (isCenter || isLeft || isTop || isBottom) {
        return true;
      }
    }
    return false;
  }

  bool atBottom(Offset oldOffset) {
    if (isBottom) {
      if (isCenter || isLeft || isTop || isRight) {
        return true;
      }
    }
    return false;
  }
}
