import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:k_profile/const/assets.dart';
import 'package:k_profile/state/mouse_hover_background.dart';

class MouseImage extends ConsumerWidget {
  final double width;
  final String? path;
  const MouseImage({this.path, Key? key, this.width = 328}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final value = watch(mouseHoverBackground);
    return ClipRRect(
      borderRadius: BorderRadius.circular(width),
      child: Transform(
        transform: Matrix4.translationValues(value.dx, value.dy, 0),
        child: Image.asset(
          AssetApp.avatar,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final double width;
  final double height;
  Avatar({
    Key? key,
    this.width = 328,
    this.height = 328,
  }) : super(key: key);

  final _boxShadown = BoxShadow(
      blurRadius: 16,
      offset: const Offset(4, 4),
      color: Colors.black.withOpacity(0.3));

  final _border = Border.all(
    width: 16,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[_boxShadown],
          borderRadius: BorderRadius.circular(width),
        ),
        child: Stack(
          children: [
            const Positioned(
              top: 1,
              left: 1,
              right: 1,
              bottom: 1,
              child: MouseImage(),
            ),
            Positioned.fill(
                child: DecoratedBox(
              decoration: BoxDecoration(
                border: _border,
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(width),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
