import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
            width: (width / 10).clamp(200, 900),
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
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith(
                        (states) => const Color.fromARGB(35, 147, 138, 242),
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
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith(
                        (states) => const Color.fromARGB(35, 147, 138, 242),
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
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith(
                        (states) => const Color.fromARGB(35, 147, 138, 242),
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
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith(
                        (states) => const Color.fromARGB(35, 147, 138, 242),
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
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith(
                        (states) => const Color.fromARGB(35, 147, 138, 242),
                      ),
                    ),
                    onPressed: () {},
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
