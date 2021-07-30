import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class BottomWave extends StatelessWidget {
  final double width;
  final double height;
  const BottomWave({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      delay: Duration(milliseconds: 50),
      child: Column(
        children: [
          Container(
            width: width,
            height: 200,
            child: MyAnimation(
              height: height,
              width: width,
            ),
          ),
          Container(
            width: width,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
                color: const Color.fromARGB(255, 186, 182, 248),
              ),
              color: const Color.fromARGB(255, 186, 182, 248),
            ),
          )
        ],
      ),
    );
  }
}

class MyClipPath extends AnimatedWidget {
  final Animation<double> animation;
  final double height;
  final double width;

  MyClipPath(this.animation, this.width, this.height)
      : super(listenable: animation);

  final Color backgroundColor = const Color.fromARGB(255, 169, 163, 249);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(children: [
            Positioned(
              bottom: 0,
              right: animation.value,
              child: ClipPath(
                clipper: BottomWaveClipper(),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: width * 2,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0,
                        color: backgroundColor,
                      ),
                      color: backgroundColor,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: animation.value,
              child: ClipPath(
                clipper: BottomWaveClipper(),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: width * 2,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0,
                        color: backgroundColor,
                      ),
                      color: backgroundColor,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, 40.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 40.0);

    for (int i = 0; i < 10; i++) {
      if (i % 2 == 0) {
        path.quadraticBezierTo(
            size.width - (size.width / 16) - (i * size.width / 8),
            0.0,
            size.width - ((i + 1) * size.width / 8),
            size.height - 160);
      } else {
        path.quadraticBezierTo(
            size.width - (size.width / 16) - (i * size.width / 8),
            size.height - 120,
            size.width - ((i + 1) * size.width / 8),
            size.height - 160);
      }
    }

    path.lineTo(0.0, 40.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyAnimation extends StatefulWidget {
  final double width;
  final double height;
  MyAnimation({
    required this.height,
    required this.width,
  });
  @override
  _MyAnimationState createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 5), vsync: this)
          ..repeat(reverse: true);

    animation = Tween<double>(begin: -500, end: 0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyClipPath(animation, widget.width, widget.height);
  }
}
