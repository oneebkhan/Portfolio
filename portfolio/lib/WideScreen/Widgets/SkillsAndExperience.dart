import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SkillsAndExperience extends StatelessWidget {
  final double width;
  final double height;
  SkillsAndExperience({
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    final double _containerWidth = (width / 2.75).clamp(380, 1000);
    final double _pictureWidth = (width / 2.3).clamp(530, 1200);
    final double _iconSize = (width / 16).clamp(80, 600);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0,
          color: const Color.fromARGB(255, 186, 182, 248),
        ),
        color: const Color.fromARGB(255, 186, 182, 248),
      ),
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              FadeInDown(
                delay: Duration(milliseconds: 300),
                duration: Duration(milliseconds: 500),
                child: Container(
                  width: _pictureWidth,
                  child: Image.network(
                    'assets/images/Phone Picture.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              FadeInDown(
                delay: Duration(milliseconds: 450),
                duration: Duration(milliseconds: 500),
                child: Container(
                  width: width / 2.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: _containerWidth,
                        padding: width < 1500
                            ? const EdgeInsets.all(20)
                            : const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 155, 149, 210),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(15),
                            topRight: const Radius.circular(15),
                          ),
                        ),
                        child: SelectableText(
                          'Skills and Experience',
                          style: TextStyle(
                            fontSize: (width / 40).clamp(30, 90),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      Container(
                        width: _containerWidth,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.only(
                            bottomLeft: const Radius.circular(15),
                            bottomRight: const Radius.circular(15),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: _containerWidth,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: SelectableText(
                                  'I have 1+ years of making cross-platform responsive applications that work well on all devices regardless of aspect ratios or resolutions. \nI have worked with flutter and firebase for 1.5 years, making freelance applications, for the design of the applications I have used Adobe XD for the same duration. I have recently started working with Django rest Framework to make rest APIs.',
                                  style: TextStyle(
                                    fontSize: (width / 100).clamp(15, 50),
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: width < 1500
                                  ? const EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                      bottom: 20,
                                    )
                                  : const EdgeInsets.only(
                                      left: 30,
                                      right: 30,
                                      bottom: 30,
                                    ),
                              child: Container(
                                width: width / 2,
                                child: Wrap(
                                  children: _listOfWidgets(
                                    height: _iconSize,
                                    width: _iconSize,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 300,
          ),
        ],
      ),
    );
  }

  _listOfWidgets({required double width, required double height}) {
    //final items = List<Widget>.generate(69, (i) {
    return [
      Tooltip(
        message: 'Proficient in Flutter',
        child: Container(
          width: width,
          height: height,
          child: Image.network(
            'assets/images/Flutter.png',
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      Tooltip(
        message:
            'Proficient in Firebase services liek push notifications, firestore, storage, auth etc.',
        child: Container(
          width: width,
          height: height,
          child: Image.network(
            'assets/images/firebase.png',
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      Tooltip(
        message: 'Proficient in Django and building APIs with Rest Framework',
        child: Container(
          width: width,
          height: height,
          child: Image.network(
            'assets/images/Django.png',
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      Tooltip(
        message:
            'Proficient in Python and python scripting with modules like numpy, opencv, scikit learn etc.',
        child: Container(
          width: width,
          height: height,
          child: Image.network(
            'assets/images/Python.png',
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      Tooltip(
        message: 'Knowledge of Adobe XD in making prototypes and mockups',
        child: Container(
          width: width,
          height: height,
          child: Image.network(
            'assets/images/adobeXD.png',
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    ];
    //});

    //return items;
  }
}
