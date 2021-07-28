import 'dart:math';

import 'package:flutter/material.dart';

//responsible for making the hover animation on buttons
class OnHoverButtonFlip extends StatefulWidget {
  final Widget child;
  final Widget child2;
  final double transform;
  OnHoverButtonFlip({
    Key? key,
    required this.child,
    required this.transform,
    required this.child2,
  }) : super(key: key);

  @override
  _OnHoverButtonFlipState createState() => _OnHoverButtonFlipState();
}

class _OnHoverButtonFlipState extends State<OnHoverButtonFlip> {
  bool isHovered = false;
  bool isBack = true;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (event) => onEntered(true, 100),
        onExit: (event) => onEntered(false, 0),
        child: TweenAnimationBuilder(
          curve: Curves.easeInOutBack,
          duration: const Duration(milliseconds: 600),
          tween: Tween<double>(begin: 0, end: angle),
          builder: (BuildContext context, double value, __) {
            if (value >= (pi / 2)) {
              isBack = false;
            } else {
              isBack = true;
            }
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(value / 100 * pi),
              child: Container(
                child: Container(
                  child: isBack ? widget.child : widget.child2,
                ),
              ),
            );
          },
        ));
  }

  void onEntered(bool isHovered, double angle) {
    setState(() {
      this.isHovered = isHovered;
      this.angle = angle;
    });
  }
}
