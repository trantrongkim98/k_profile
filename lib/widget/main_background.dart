import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:k_profile/const/assets.dart';
import 'package:k_profile/state/mouse_hover_background.dart';

// ignore: must_be_immutable
class MainBackground extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final notifier = watch(mouseHoverBackground);
    return Container(
      color: Theme.of(context).primaryColor,
      child: Transform(
        transform: Matrix4.translationValues(notifier.dx, notifier.dy, 0),
        child: Transform.scale(
          scale: 1.05,
          child: Image.asset(
            AssetApp.mainBackground14,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
