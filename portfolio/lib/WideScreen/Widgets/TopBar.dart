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
            width: (width / 10).clamp(150, 300),
            child: Image.network(
              'assets/assets/images/Ring.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        FadeInDown(
          delay: Duration(milliseconds: 500),
          child: Padding(
            padding: EdgeInsets.only(
              top: width / 70,
              right: width / 25,
            ),
            child: Container(
              width: (width / 3.7).clamp(500, 1000),
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
                      child: Text(
                        'Home',
                        style: TextStyle(
                          fontSize: (width / 100).clamp(16, 30),
                          color: const Color.fromARGB(255, 112, 112, 112),
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
                      child: Text(
                        'Skills',
                        style: TextStyle(
                          fontSize: (width / 100).clamp(16, 30),
                          color: const Color.fromARGB(255, 112, 112, 112),
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
                      child: Text(
                        'Projects',
                        style: TextStyle(
                          fontSize: (width / 100).clamp(16, 30),
                          color: const Color.fromARGB(255, 112, 112, 112),
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
                      child: Text(
                        'Contact Me',
                        style: TextStyle(
                          fontSize: (width / 100).clamp(16, 30),
                          color: const Color.fromARGB(255, 112, 112, 112),
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
                        launch('assets/assets/PDF/OneebKhanResume.pdf');
                      },
                      child: Text(
                        'Resume',
                        style: TextStyle(
                          fontSize: (width / 100).clamp(16, 30),
                          color: const Color.fromARGB(255, 147, 138, 242),
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
