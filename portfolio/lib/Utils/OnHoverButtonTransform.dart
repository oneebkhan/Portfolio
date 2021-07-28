import 'package:flutter/material.dart';

//responsible for making the hover animation on buttons
class OnHoverButtonTransform extends StatefulWidget {
  final Widget child;
  final double transform;
  OnHoverButtonTransform({
    Key? key,
    required this.child,
    required this.transform,
  }) : super(key: key);

  @override
  _OnHoverButtonTransformState createState() => _OnHoverButtonTransformState();
}

class _OnHoverButtonTransformState extends State<OnHoverButtonTransform> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()
      ..translate(0, -(widget.transform), 0);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        transform: transform,
        duration: Duration(milliseconds: 150),
        child: widget.child,
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
