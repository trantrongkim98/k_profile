import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mouseHoverBackground =
    StateNotifierProvider<MouseHoverState, Offset>((ref) => MouseHoverState());

class MouseHoverState extends StateNotifier<Offset> {
  MouseHoverState() : super(Offset.zero);

  final movementStrength = 15;

  void updateHover(PointerHoverEvent pointer, BuildContext ctx) {
    final e = pointer.position;
    final size = MediaQuery.of(ctx).size;
    final height = movementStrength / size.height;
    final width = movementStrength / size.width;
    final pageX = e.dx - (size.width / 2);
    final pageY = e.dy - (size.height / 2);
    final newValueX = width * pageX * -1;
    final newValueY = height * pageY * -1;
    state = Offset(newValueX, newValueY);
  }
}
