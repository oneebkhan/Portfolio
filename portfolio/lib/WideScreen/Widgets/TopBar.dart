import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Utils/OnHoverButtonTransform.dart';
import 'dart:html' as html;

import 'package:url_launcher/url_launcher.dart';

class TopBar extends StatelessWidget {
  final double height;
  final double width;

  TopBar({required this.height, required this.width});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInDown(
          child: SizedBox(
            width: (width / 10).clamp(150, 900),
            child: Image.network(
              'assets/images/Ring.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        FadeInDown(
          delay: Duration(milliseconds: 500),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 12.0,
              right: 30,
            ),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnHoverButtonTransform(
                    transform: 5,
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.transparent,
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Home',
                          style: TextStyle(
                            fontSize: (width / 100).clamp(16, 50),
                            color: const Color.fromARGB(255, 112, 112, 112),
                          ),
                        ),
                      ),
                    ),
                  ),
                  OnHoverButtonTransform(
                    transform: 5,
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.transparent,
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Skills',
                          style: TextStyle(
                            fontSize: (width / 100).clamp(16, 50),
                            color: const Color.fromARGB(255, 112, 112, 112),
                          ),
                        ),
                      ),
                    ),
                  ),
                  OnHoverButtonTransform(
                    transform: 5,
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.transparent,
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Projects',
                          style: TextStyle(
                            fontSize: (width / 100).clamp(16, 50),
                            color: const Color.fromARGB(255, 112, 112, 112),
                          ),
                        ),
                      ),
                    ),
                  ),
                  OnHoverButtonTransform(
                    transform: 5,
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.transparent,
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Contact Me',
                          style: TextStyle(
                            fontSize: (width / 100).clamp(16, 50),
                            color: const Color.fromARGB(255, 112, 112, 112),
                          ),
                        ),
                      ),
                    ),
                  ),
                  OnHoverButtonTransform(
                    transform: 5,
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.transparent,
                        ),
                      ),
                      onPressed: () {
                        launch('assets/PDF/Oneeb Khan Resume.pdf');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Resume',
                          style: TextStyle(
                            fontSize: (width / 100).clamp(16, 50),
                            color: const Color.fromARGB(255, 147, 138, 242),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
