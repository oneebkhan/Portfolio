import 'package:flutter/material.dart';

//responsible for making the hover animation on buttons
class OnHoverButtonScale extends StatefulWidget {
  final Widget child;
  final double transform;
  OnHoverButtonScale({
    Key? key,
    required this.child,
    required this.transform,
  }) : super(key: key);

  @override
  _OnHoverButtonScaleState createState() => _OnHoverButtonScaleState();
}

class _OnHoverButtonScaleState extends State<OnHoverButtonScale> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.3);
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
