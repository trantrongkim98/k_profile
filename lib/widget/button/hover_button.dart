import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k_profile/const/color.dart';

class HoverButton extends StatefulWidget {
  final Function()? onTap;
  final Function()? onHover;
  const HoverButton({
    Key? key,
    this.onTap,
    this.onHover,
  }) : super(key: key);

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton>
    with SingleTickerProviderStateMixin {
  late final Animation<Color?> _animButton;
  late final Animation<Color?> _animText;
  late final AnimationController _controller;

  final border = Border.all(
    color: AppColor.buttonPrimary,
    width: 2,
  );
  final borderRadius = BorderRadius.circular(32);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animButton = ColorTween(
      begin: Colors.white,
      end: AppColor.buttonPrimary,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );

    _animText = ColorTween(
      begin: Colors.black,
      end: Colors.white,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (pointer) {
        _controller.forward();
      },
      onExit: (pointer) {
        _controller.reverse();
      },
      child: AnimatedBuilder(
          animation: _controller,
          builder: (ctx, child) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: _animButton.value,
                border: border,
                borderRadius: borderRadius,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 11,
                  horizontal: 30,
                ),
                child: SizedBox(
                  height: 16,
                  width: 100,
                  child: Text(
                    'Download CV',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: _animText.value,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
