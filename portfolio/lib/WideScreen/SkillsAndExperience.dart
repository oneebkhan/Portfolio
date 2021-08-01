import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SkillsAndExperience extends StatefulWidget {
  final double width;
  final double height;
  SkillsAndExperience({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  _SkillsAndExperienceState createState() => _SkillsAndExperienceState();
}

class _SkillsAndExperienceState extends State<SkillsAndExperience> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0,
          color: const Color.fromARGB(255, 186, 182, 248),
        ),
        color: const Color.fromARGB(255, 186, 182, 248),
      ),
      width: widget.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInDown(
            delay: Duration(milliseconds: 250),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: widget.width / 2,
                    child: Image.network('assets/images/Phone Picture.png'),
                  ),
                  Container(
                    width: widget.width / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 127, 120, 191),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'Skills and\nExperience',
                            style: TextStyle(
                              fontSize: (widget.width / 40).clamp(30, 90),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: widget.width / 2.9,
                          child: Text(
                            'I have 1+ years of making cross-platform responsive applications that work well on all devices regardless of aspect ratios or resolutions. \nI have worked with flutter and firebase for 1.5 years, making freelance applications, for the design of the applications I have used Adobe XD for the same duration. I have recently started working with Django rest Framework to make rest APIs.',
                            style: TextStyle(
                              fontSize: (widget.width / 80).clamp(15, 50),
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 2,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            width: widget.width,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
              ),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Text('asasas'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsIcons extends StatelessWidget {
  final double width;
  final double height;
  const SkillsIcons({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}

class LottieWidget extends StatelessWidget {
  final double width;
  final double height;
  const LottieWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        width: width / 4,
        height: width / 3,
        child: LottieBuilder.network(
          'assets/lottie/bubbles.json',
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
